require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |k, v|
    v << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, value|
    puts "#{season.to_s.capitalize}:"
    value.each do |holiday, v|
      arr = holiday.to_s.split("_")
      cap_holiday = []
      arr.each do |z|
        cap_holiday << z.capitalize!
      end
      holiday = cap_holiday.join(" ")
      v = v.join(", ")
      puts "  #{holiday}: #{v}"
    end
  end
end








def all_holidays_with_bbq(holiday_hash)
  bbq = []
  holiday_hash.each do |key, value|
    value.each do |s, i|
      i.each do |supply|
        if supply == "BBQ"
          bbq << s
        end
      end
    end
  end
  bbq
end
