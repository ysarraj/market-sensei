class CheckCriteriaJob < ApplicationJob
  require 'net/http'
  require 'json'
  queue_as :default

  def perform(*args)
    alerts = Alert.all

    alerts.each do |alert| 
      criteria = alert.criteria.all

      if criteria.size == 1
        puts "One criteria"
        if check_criterium(criteria.first) 
          puts "Single criterium is true"
          UserMailer.with(user: alert.user).alert_email.deliver_later
        end
      elsif criteria.size == 2
        puts "Two criteria"
        if check_criterium(criteria.first) && check_criterium(criteria.last)
          puts "Both criteria are true"
          UserMailer.with(user: alert.user).alert_email.deliver_later
        end
      elsif criteria.size == 3
        puts "Three criteria"
        if check_criterium(criteria.first) && check_criterium(criteria[1]) && check_criterium(criteria.last)
          puts "All three criteria are true"
          UserMailer.with(user: alert.user).alert_email.deliver_later
        end
      end
    end
  end

  private 

  # Create RSI query
  def check_criterium(criterium)
    uri = URI("https://www.alphavantage.co/query?function=RSI&symbol=ETH&interval=#{criterium.indicatable.interval}&time_period=#{criterium.indicatable.time_period}&series_type=close&apikey=#{ENV['ALPHAVANTAGE_KEY']}")
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      value = JSON.parse(response.body)["Technical Analysis: RSI"].values[0]["RSI"]
      case criterium.operand
      when ">"
        puts "Greater than"
        criterium.value > value.to_f
      when "<"  
        puts "Less than"
        criterium.value < value.to_f
      end
    else 
      puts "Error retrieving RSI data from Alphavantage"
    end 
  end
end

