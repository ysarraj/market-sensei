class DashboardController < ApplicationController
  require 'net/http'
  require 'json'

  def index
    @marketdata = fetch_market_data
  end

  private

  def fetch_market_data
    begin
      # Fetch DeFi market data from Llama.fi
      uri = URI('https://api.llama.fi/overview')
      response = Net::HTTP.get_response(uri)
      
      if response.is_a?(Net::HTTPSuccess)
        data = JSON.parse(response.body)
        
        # Extract key metrics
        [
          {
            name: "Total DeFi Market Cap",
            value: format_currency(data.dig('totalMarketCapDeFi') || 0),
            change: data.dig('change_1d', 'totalMarketCapDeFi') || 0
          },
          {
            name: "Total TVL",
            value: format_currency(data.dig('totalLiquidityUSD') || 0),
            change: data.dig('change_1d', 'totalLiquidityUSD') || 0
          },
          {
            name: "Total Volume 24h",
            value: format_currency(data.dig('totalVolume24h') || 0),
            change: data.dig('change_1d', 'totalVolume24h') || 0
          },
          {
            name: "Active Protocols",
            value: (data.dig('protocols') || []).length.to_s,
            change: nil
          },
          {
            name: "Top Protocol",
            value: get_top_protocol_name(data),
            change: nil
          }
        ]
      else
        # Fallback data if API fails
        [
          { name: "Total DeFi Market Cap", value: "N/A", change: nil },
          { name: "Total TVL", value: "N/A", change: nil },
          { name: "Total Volume 24h", value: "N/A", change: nil },
          { name: "Active Protocols", value: "N/A", change: nil },
          { name: "Top Protocol", value: "N/A", change: nil }
        ]
      end
    rescue => e
      Rails.logger.error "Error fetching market data: #{e.message}"
      # Fallback data on error
      [
        { name: "Total DeFi Market Cap", value: "Error", change: nil },
        { name: "Total TVL", value: "Error", change: nil },
        { name: "Total Volume 24h", value: "Error", change: nil },
        { name: "Active Protocols", value: "Error", change: nil },
        { name: "Top Protocol", value: "Error", change: nil }
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

  def get_top_protocol_name(data)
    protocols = data.dig('protocols') || []
    return "N/A" if protocols.empty?
    
    # Get the protocol with highest TVL
    top_protocol = protocols.max_by { |p| p['tvl'] || 0 }
    top_protocol&.dig('name') || "N/A"
  end
end
