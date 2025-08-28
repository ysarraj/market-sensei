# available intervals are:
# 5min | 15min | 30min | 60min | daily | weekly | monthly
#
# most common time periods are 7, 8, 9, 14, 21
puts "Cleaning the Database..."

puts "Cleaning RelativeStrengthIndex instances..."
RelativeStrengthIndex.destroy_all

puts "Cleaning Token instances..."
Token.destroy_all

puts "Cleaning User instances..."
User.destroy_all

puts "Cleaning Preference instances..."
Preference.destroy_all

puts "Cleaning Criterium instances..."
Criterium.destroy_all

puts "Cleaning Alert instances..."
Alert.destroy_all

puts "Cleaning CriteriaAlert instances..."
CriteriaAlert.destroy_all

puts "Seeding..."
puts "creating rsi settings in the database"
rsi_7_5min = RelativeStrengthIndex.new
rsi_7_5min.interval = "5min"
rsi_7_5min.time_period = 7
rsi_7_5min.name = "RSI"
rsi_7_5min.save!

rsi_7_15min = RelativeStrengthIndex.new
rsi_7_15min.interval = "15min"
rsi_7_15min.time_period = 7
rsi_7_15min.name = "RSI"
rsi_7_15min.save!

rsi_7_30min = RelativeStrengthIndex.new
rsi_7_30min.interval = "30min"
rsi_7_30min.time_period = 7
rsi_7_30min.name = "RSI"
rsi_7_30min.save!

rsi_7_60min = RelativeStrengthIndex.new
rsi_7_60min.interval = "60min"
rsi_7_60min.time_period = 7
rsi_7_60min.name = "RSI"
rsi_7_60min.save!

rsi_7_daily = RelativeStrengthIndex.new
rsi_7_daily.interval = "daily"
rsi_7_daily.time_period = 7
rsi_7_daily.name = "RSI"
rsi_7_daily.save!

rsi_7_weekly = RelativeStrengthIndex.new
rsi_7_weekly.interval = "weekly"
rsi_7_weekly.time_period = 7
rsi_7_weekly.name = "RSI"
rsi_7_weekly.save!

rsi_7_monthly = RelativeStrengthIndex.new
rsi_7_monthly.interval = "monthly"
rsi_7_monthly.time_period = 7
rsi_7_monthly.name = "RSI"
rsi_7_monthly.save!

rsi_8_5min = RelativeStrengthIndex.new
rsi_8_5min.interval = "5min"
rsi_8_5min.time_period = 8
rsi_8_5min.name = "RSI"
rsi_8_5min.save!

rsi_8_15min = RelativeStrengthIndex.new
rsi_8_15min.interval = "15min"
rsi_8_15min.time_period = 8
rsi_8_15min.name = "RSI"
rsi_8_15min.save!

rsi_8_30min = RelativeStrengthIndex.new
rsi_8_30min.interval = "30min"
rsi_8_30min.time_period = 8
rsi_8_30min.name = "RSI"
rsi_8_30min.save!

rsi_8_60min = RelativeStrengthIndex.new
rsi_8_60min.interval = "60min"
rsi_8_60min.time_period = 8
rsi_8_60min.name = "RSI"
rsi_8_60min.save!

rsi_8_daily = RelativeStrengthIndex.new
rsi_8_daily.interval = "daily"
rsi_8_daily.time_period = 8
rsi_8_daily.name = "RSI"
rsi_8_daily.save!

rsi_8_weekly = RelativeStrengthIndex.new
rsi_8_weekly.interval = "weekly"
rsi_8_weekly.time_period = 8
rsi_8_weekly.name = "RSI"
rsi_8_weekly.save!

rsi_8_monthly = RelativeStrengthIndex.new
rsi_8_monthly.interval = "monthly"
rsi_8_monthly.time_period = 8
rsi_8_monthly.name = "RSI"
rsi_8_monthly.save!

rsi_9_5min = RelativeStrengthIndex.new
rsi_9_5min.interval = "5min"
rsi_9_5min.time_period = 9
rsi_9_5min.name = "RSI"
rsi_9_5min.save!

rsi_9_15min = RelativeStrengthIndex.new
rsi_9_15min.interval = "15min"
rsi_9_15min.time_period = 9
rsi_9_15min.name = "RSI"
rsi_9_15min.save!

rsi_9_30min = RelativeStrengthIndex.new
rsi_9_30min.interval = "30min"
rsi_9_30min.time_period = 9
rsi_9_30min.name = "RSI"
rsi_9_30min.save!

rsi_9_60min = RelativeStrengthIndex.new
rsi_9_60min.interval = "60min"
rsi_9_60min.time_period = 9
rsi_9_60min.name = "RSI"
rsi_9_60min.save!

rsi_9_daily = RelativeStrengthIndex.new
rsi_9_daily.interval = "daily"
rsi_9_daily.time_period = 9
rsi_9_daily.name = "RSI"
rsi_9_daily.save!

rsi_9_weekly = RelativeStrengthIndex.new
rsi_9_weekly.interval = "weekly"
rsi_9_weekly.time_period = 9
rsi_9_weekly.name = "RSI"
rsi_9_weekly.save!

rsi_9_monthly = RelativeStrengthIndex.new
rsi_9_monthly.interval = "monthly"
rsi_9_monthly.time_period = 9
rsi_9_monthly.name = "RSI"
rsi_9_monthly.save!

rsi_14_5min = RelativeStrengthIndex.new
rsi_14_5min.interval = "5min"
rsi_14_5min.time_period = 14
rsi_14_5min.name = "RSI"
rsi_14_5min.save!

rsi_14_15min = RelativeStrengthIndex.new
rsi_14_15min.interval = "15min"
rsi_14_15min.time_period = 14
rsi_14_15min.name = "RSI"
rsi_14_15min.save!

rsi_14_30min = RelativeStrengthIndex.new
rsi_14_30min.interval = "30min"
rsi_14_30min.time_period = 14
rsi_14_30min.name = "RSI"
rsi_14_30min.save!

rsi_14_60min = RelativeStrengthIndex.new
rsi_14_60min.interval = "60min"
rsi_14_60min.time_period = 14
rsi_14_60min.name = "RSI"
rsi_14_60min.save!

rsi_14_daily = RelativeStrengthIndex.new
rsi_14_daily.interval = "daily"
rsi_14_daily.time_period = 14
rsi_14_daily.name = "RSI"
rsi_14_daily.save!

rsi_14_weekly = RelativeStrengthIndex.new
rsi_14_weekly.interval = "weekly"
rsi_14_weekly.time_period = 14
rsi_14_weekly.name = "RSI"
rsi_14_weekly.save!

rsi_14_monthly = RelativeStrengthIndex.new
rsi_14_monthly.interval = "monthly"
rsi_14_monthly.time_period = 14
rsi_14_monthly.name = "RSI"
rsi_14_monthly.save!

rsi_21_5min = RelativeStrengthIndex.new
rsi_21_5min.interval = "5min"
rsi_21_5min.time_period = 21
rsi_21_5min.name = "RSI"
rsi_21_5min.save!

rsi_21_15min = RelativeStrengthIndex.new
rsi_21_15min.interval = "15min"
rsi_21_15min.time_period = 21
rsi_21_15min.name = "RSI"
rsi_21_15min.save!

rsi_21_30min = RelativeStrengthIndex.new
rsi_21_30min.interval = "30min"
rsi_21_30min.time_period = 21
rsi_21_30min.name = "RSI"
rsi_21_30min.save!

rsi_21_60min = RelativeStrengthIndex.new
rsi_21_60min.interval = "60min"
rsi_21_60min.time_period = 21
rsi_21_60min.name = "RSI"
rsi_21_60min.save!

rsi_21_daily = RelativeStrengthIndex.new
rsi_21_daily.interval = "daily"
rsi_21_daily.time_period = 21
rsi_21_daily.name = "RSI"
rsi_21_daily.save!

rsi_21_weekly = RelativeStrengthIndex.new
rsi_21_weekly.interval = "weekly"
rsi_21_weekly.time_period = 21
rsi_21_weekly.name = "RSI"
rsi_21_weekly.save!

rsi_21_monthly = RelativeStrengthIndex.new
rsi_21_monthly.interval = "monthly"
rsi_21_monthly.time_period = 21
rsi_21_monthly.name = "RSI"
rsi_21_monthly.save!

puts "creating major DeFi tokens in the database"

# Major DeFi Tokens (Ethereum Mainnet Only)
defi_tokens = [
  { name: "Ethereum", symbol: "WETH", token_contract: "0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2" },
  { name: "Uniswap", symbol: "UNI", token_contract: "0x1f9840a85d5af5bf1d1762f925bdaddc4201f984" },
  { name: "Aave", symbol: "AAVE", token_contract: "0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9" },
  { name: "Compound", symbol: "COMP", token_contract: "0xc00e94cb662c3520282e6f5717214004a7f26888" },
  { name: "Maker", symbol: "MKR", token_contract: "0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2" },
  { name: "SushiSwap", symbol: "SUSHI", token_contract: "0x6b3595068778dd592e39a122f4f5a5cf09c90fe2" },
  { name: "Yearn Finance", symbol: "YFI", token_contract: "0x0bc529c00c6401aef6d220be8c6ea1667f6ad9e2" },
  { name: "Curve DAO Token", symbol: "CRV", token_contract: "0xd533a949740bb3306d119cc777fa900ba034cd52" },
  { name: "Synthetix", symbol: "SNX", token_contract: "0xc011a73ee8576fb46f5e1c5751ca3b9fe0f2a6f5" },
  { name: "1inch", symbol: "1INCH", token_contract: "0x111111111117dc0aa78b770fa6a738034120c302" },
  { name: "Chainlink", symbol: "LINK", token_contract: "0x514910771af9ca656af840dff83e8264ecf986ca" },
  { name: "Balancer", symbol: "BAL", token_contract: "0xba100000625a3754423978a60c9317c58a424e3d" },
  { name: "Convex Finance", symbol: "CVX", token_contract: "0x4e3fbd56cd56c3e72c1403e103b45db9da5b9d2b" },
  { name: "Frax", symbol: "FRAX", token_contract: "0x853d955acef822db058eb8505911ed77f175b99e" },
  { name: "Frax Share", symbol: "FXS", token_contract: "0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0" },
  { name: "Lido DAO", symbol: "LDO", token_contract: "0x5a98fcbea516cf06857215779fd812ca3bef1b32" },
  { name: "Rocket Pool", symbol: "RPL", token_contract: "0xd33526068d116ce69f19a9ee46f0bd304f21a51f" },
  { name: "StakeWise", symbol: "SWISE", token_contract: "0x48c3399719b582dd63eb5aadf12a40b4c3f52fa2" },
  { name: "Ethereum Name Service", symbol: "ENS", token_contract: "0xc18360217d8f7ab5e7c516566761ea12ce7f9d72" },
  { name: "Gitcoin", symbol: "GTC", token_contract: "0xde30da39c46104798bb5aa3fe8b9e0e1f348163f" },
  { name: "Badger DAO", symbol: "BADGER", token_contract: "0x3472a5a71965499acd81997a54bba8d852c6e53d" },
  { name: "Fei Protocol", symbol: "FEI", token_contract: "0x956f47f50a910163d8bf957cf5846d573e7f87ca" },
  { name: "Tribe", symbol: "TRIBE", token_contract: "0xc7283b66eb1eb5fb86327f08e1b5416bcd321c86" },
  { name: "Olympus", symbol: "OHM", token_contract: "0x383518188c0c6d7730d91b2c03a03c837814a899" }
]

defi_tokens.each do |token|
  Token.create!(
    name: token[:name],
    symbol: token[:symbol],
    token_contract: token[:token_contract]
  )
end

puts "Created #{defi_tokens.length} Ethereum mainnet DeFi tokens"

puts "Created #{RelativeStrengthIndex.count} RSI seeds"

puts "Creating a user..."
user1 = User.new(email: "me@here.com", password: "123456", wallet_address: "0x35E0091D67B5e213db857F605c2047cA29A8800d")
prefs1 = Preference.new(theme: "dark", locale: "en", market: "crypto", toolbar: "true")
user1.preference = prefs1
user1.save!
puts "One user created"

puts "Preparing to create an alert..."
puts "Creating 4 signals"
criteria1 = Criterium.new(operand: "<", value: 20)
criteria1.indicatable = rsi_7_30min
criteria1.save!

criteria2 = Criterium.new(operand: ">", value: 80)
criteria2.indicatable = rsi_7_30min
criteria2.save!

# One of the following criteria should definitely trigger
criteria3 = Criterium.new(operand: ">", value: 50)
criteria3.indicatable = rsi_7_30min
criteria3.save!

criteria4 = Criterium.new(operand: "<", value: 50)
criteria4.indicatable = rsi_7_30min
criteria4.save!

puts "Creating an alert"
alert1 = Alert.new(name: "RSI Test Alert", description: "This is some description of the alert")
alert1.user = user1
alert1.save!

puts "Creating two criteria_alert joiners"
criteria_alert_join1 = CriteriaAlert.new
criteria_alert_join1.alert = alert1
criteria_alert_join1.criterium = criteria3
criteria_alert_join1.save!
criteria_alert_join2 = CriteriaAlert.new
criteria_alert_join2.alert = alert1
criteria_alert_join2.criterium = criteria4
criteria_alert_join1.save!
