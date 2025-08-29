class DashboardController < ApplicationController
  require 'net/http'
  require 'json'

  def index
    @marketdata = fetch_essential_metrics
    @crypto_details = fetch_crypto_details('ethereum')
    @tokens = Token.all.map {|token| [token.name, token.token_contract]}
  end

  private

  def fetch_essential_metrics
    begin
      uri = URI('https://api.llama.fi/overview')
      response = Net::HTTP.get_response(uri)

      if response.is_a?(Net::HTTPSuccess)
        data = JSON.parse(response.body)
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
        [
          { name: "Total TVL", daily: "N/A", weekly: "N/A", monthly: "N/A" },
          { name: "Total Volume", daily: "N/A", weekly: "N/A", monthly: "N/A" },
          { name: "Market Cap", daily: "N/A", weekly: "N/A", monthly: "N/A" }
        ]
      end
    rescue => e
      [
        { name: "Total TVL", daily: "Error", weekly: "Error", monthly: "Error" },
        { name: "Total Volume", daily: "Error", weekly: "Error", monthly: "Error" },
        { name: "Market Cap", daily: "Error", weekly: "Error", monthly: "Error" }
      ]
    end
  end

  def fetch_crypto_details(crypto_slug)
    begin
      uri = URI("https://api.llama.fi/overview/fees/#{crypto_slug}")
      response = Net::HTTP.get_response(uri)

      if response.is_a?(Net::HTTPSuccess)
        data = JSON.parse(response.body)
        {
          name: data['name'] || crypto_slug.capitalize,
          slug: crypto_slug,
          total24h: format_currency(data.dig('total24h') || 0),
          total7d: format_currency(data.dig('total7d') || 0),
          total30d: format_currency(data.dig('total30d') || 0),
          change_1d: data.dig('change_1d') || 0,
          change_7d: data.dig('change_7d') || 0,
          change_30d: data.dig('change_30d') || 0,
          category: data['category'] || 'Unknown',
          chains: data['chains'] || [crypto_slug.capitalize],
          logo: data['logo'] || nil,
          methodology: data.dig('methodology', 'Fees') || 'No methodology available'
        }
      else
        { name: crypto_slug.capitalize, slug: crypto_slug, error: "Data unavailable" }
      end
    rescue => e
      { name: crypto_slug.capitalize, slug: crypto_slug, error: "Error fetching data" }
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
