class DashboardController < ApplicationController
  require 'net/http'
  require 'json'

  def index
    @marketdata = fetch_essential_metrics
  end

  private

  def fetch_essential_metrics
    begin
      # Fetch DeFi market data from Llama.fi
      uri = URI('https://api.llama.fi/overview')
      response = Net::HTTP.get_response(uri)
      
      if response.is_a?(Net::HTTPSuccess)
        data = JSON.parse(response.body)
        
        # Extract only essential metrics
        [
          {
            name: "Total TVL",
            daily: format_currency(data.dig('change_1d', 'totalLiquidityUSD') || 0),
            weekly: format_currency(data.dig('change_7d', 'totalLiquidityUSD') || 0),
            monthly: format_currency(data.dig('change_1m', 'totalLiquidityUSD') || 0)
          },
          {
            name: "Total Volume",
            daily: format_currency(data.dig('totalVolume24h') || 0),
            weekly: format_currency(data.dig('totalVolume7d') || 0),
            monthly: format_currency(data.dig('totalVolume30d') || 0)
          },
          {
            name: "Market Cap",
            daily: format_currency(data.dig('change_1d', 'totalMarketCapDeFi') || 0),
            weekly: format_currency(data.dig('change_7d', 'totalMarketCapDeFi') || 0),
            monthly: format_currency(data.dig('change_1m', 'totalMarketCapDeFi') || 0)
          }
        ]
      else
        # Fallback data if API fails
        [
          { name: "Total TVL", daily: "N/A", weekly: "N/A", monthly: "N/A" },
          { name: "Total Volume", daily: "N/A", weekly: "N/A", monthly: "N/A" },
          { name: "Market Cap", daily: "N/A", weekly: "N/A", monthly: "N/A" }
        ]
      end
    rescue => e
      Rails.logger.error "Error fetching market data: #{e.message}"
      # Fallback data on error
      [
        { name: "Total TVL", daily: "Error", weekly: "Error", monthly: "Error" },
        { name: "Total Volume", daily: "Error", weekly: "Error", monthly: "Error" },
        { name: "Market Cap", daily: "Error", weekly: "Error", monthly: "Error" }
      ]
    end
  end

  def format_currency(value)
    return "N/A" if value.nil? || value == 0
    
    if value >= 1_000_000_000
      "#{(value / 1_000_000_000.0).round(2)}B"
    elsif value >= 1_000_000
      "#{(value / 1_000_000.0).round(2)}M"
    elsif value >= 1_000
      "#{(value / 1_000.0).round(2)}K"
    else
      value.round(2).to_s
    end
  end
end
