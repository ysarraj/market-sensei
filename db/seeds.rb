# available intervals are:
# 5min | 15min | 30min | 60min | daily | weekly | monthly
#
# most common time periods are 7, 8, 9, 14, 21
puts "Seeding..."
puts "creating rsi settings in the database"
rsi_7_5min = RelativeStrengthIndex.new
rsi_7_5min.interval = "5min"
rsi_7_5min.time_period = 7
rsi_7_5min.save!

rsi_7_15min = RelativeStrengthIndex.new
rsi_7_15min.interval = "15min"
rsi_7_15min.time_period = 7
rsi_7_15min.save!

rsi_7_30min = RelativeStrengthIndex.new
rsi_7_30min.interval = "30min"
rsi_7_30min.time_period = 7
rsi_7_30min.save!

rsi_7_60min = RelativeStrengthIndex.new
rsi_7_60min.interval = "60min"
rsi_7_60min.time_period = 7
rsi_7_60min.save!

rsi_7_daily = RelativeStrengthIndex.new
rsi_7_daily.interval = "daily"
rsi_7_daily.time_period = 7
rsi_7_daily.save!

rsi_7_weekly = RelativeStrengthIndex.new
rsi_7_weekly.interval = "weekly"
rsi_7_weekly.time_period = 7
rsi_7_weekly.save!

rsi_7_monthly = RelativeStrengthIndex.new
rsi_7_monthly.interval = "monthly"
rsi_7_monthly.time_period = 7
rsi_7_monthly.save!

rsi_8_5min = RelativeStrengthIndex.new
rsi_8_5min.interval = "5min"
rsi_8_5min.time_period = 8
rsi_8_5min.save!

rsi_8_15min = RelativeStrengthIndex.new
rsi_8_15min.interval = "15min"
rsi_8_15min.time_period = 8
rsi_8_15min.save!

rsi_8_30min = RelativeStrengthIndex.new
rsi_8_30min.interval = "30min"
rsi_8_30min.time_period = 8
rsi_8_30min.save!

rsi_8_60min = RelativeStrengthIndex.new
rsi_8_60min.interval = "60min"
rsi_8_60min.time_period = 8
rsi_8_60min.save!

rsi_8_daily = RelativeStrengthIndex.new
rsi_8_daily.interval = "daily"
rsi_8_daily.time_period = 8
rsi_8_daily.save!

rsi_8_weekly = RelativeStrengthIndex.new
rsi_8_weekly.interval = "weekly"
rsi_8_weekly.time_period = 8
rsi_8_weekly.save!

rsi_8_monthly = RelativeStrengthIndex.new
rsi_8_monthly.interval = "monthly"
rsi_8_monthly.time_period = 8
rsi_8_monthly.save!

rsi_9_5min = RelativeStrengthIndex.new
rsi_9_5min.interval = "5min"
rsi_9_5min.time_period = 9
rsi_9_5min.save!

rsi_9_15min = RelativeStrengthIndex.new
rsi_9_15min.interval = "15min"
rsi_9_15min.time_period = 9
rsi_9_15min.save!

rsi_9_30min = RelativeStrengthIndex.new
rsi_9_30min.interval = "30min"
rsi_9_30min.time_period = 9
rsi_9_30min.save!

rsi_9_60min = RelativeStrengthIndex.new
rsi_9_60min.interval = "60min"
rsi_9_60min.time_period = 9
rsi_9_60min.save!

rsi_9_daily = RelativeStrengthIndex.new
rsi_9_daily.interval = "daily"
rsi_9_daily.time_period = 9
rsi_9_daily.save!

rsi_9_weekly = RelativeStrengthIndex.new
rsi_9_weekly.interval = "weekly"
rsi_9_weekly.time_period = 9
rsi_9_weekly.save!

rsi_9_monthly = RelativeStrengthIndex.new
rsi_9_monthly.interval = "monthly"
rsi_9_monthly.time_period = 9
rsi_9_monthly.save!

rsi_14_5min = RelativeStrengthIndex.new
rsi_14_5min.interval = "5min"
rsi_14_5min.time_period = 14
rsi_14_5min.save!

rsi_14_15min = RelativeStrengthIndex.new
rsi_14_15min.interval = "15min"
rsi_14_15min.time_period = 14
rsi_14_15min.save!

rsi_14_30min = RelativeStrengthIndex.new
rsi_14_30min.interval = "30min"
rsi_14_30min.time_period = 14
rsi_14_30min.save!

rsi_14_60min = RelativeStrengthIndex.new
rsi_14_60min.interval = "60min"
rsi_14_60min.time_period = 14
rsi_14_60min.save!

rsi_14_daily = RelativeStrengthIndex.new
rsi_14_daily.interval = "daily"
rsi_14_daily.time_period = 14
rsi_14_daily.save!

rsi_14_weekly = RelativeStrengthIndex.new
rsi_14_weekly.interval = "weekly"
rsi_14_weekly.time_period = 14
rsi_14_weekly.save!

rsi_14_monthly = RelativeStrengthIndex.new
rsi_14_monthly.interval = "monthly"
rsi_14_monthly.time_period = 14
rsi_14_monthly.save!

rsi_21_5min = RelativeStrengthIndex.new
rsi_21_5min.interval = "5min"
rsi_21_5min.time_period = 21
rsi_21_5min.save!

rsi_21_15min = RelativeStrengthIndex.new
rsi_21_15min.interval = "15min"
rsi_21_15min.time_period = 21
rsi_21_15min.save!

rsi_21_30min = RelativeStrengthIndex.new
rsi_21_30min.interval = "30min"
rsi_21_30min.time_period = 21
rsi_21_30min.save!

rsi_21_60min = RelativeStrengthIndex.new
rsi_21_60min.interval = "60min"
rsi_21_60min.time_period = 21
rsi_21_60min.save!

rsi_21_daily = RelativeStrengthIndex.new
rsi_21_daily.interval = "daily"
rsi_21_daily.time_period = 21
rsi_21_daily.save!

rsi_21_weekly = RelativeStrengthIndex.new
rsi_21_weekly.interval = "weekly"
rsi_21_weekly.time_period = 21
rsi_21_weekly.save!

rsi_21_monthly = RelativeStrengthIndex.new
rsi_21_monthly.interval = "monthly"
rsi_21_monthly.time_period = 21
rsi_21_monthly.save!

puts "Created #{RelativeStrengthIndex.count} RSI seeds"

puts "Creating a user..."
user1 = User.new(email: "me@here.com", password: "123456", wallet_address: "0x35E0091D67B5e213db857F605c2047cA29A8800d")
prefs1 = Preference.new(theme: "dark", locale: "en", market: "crypto", toolbar: "true")
user1.preference = prefs1
user1.save!
puts "One user created"