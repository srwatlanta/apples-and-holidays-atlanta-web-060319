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
  holiday_hash[:summer][:memorial_day].each do |v|
    v << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  all_supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      all_supplies = holiday.values.flatten
    end
    end
    all_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    holiday.split
    holiday.capitalize
    holiday.each do |supplies|
      print season.to_s.capitalize + ": " + holiday.join + ": " + supplies.to_s
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    bbq_holidays = holiday.include?("BBQ") do |array|
      bbq_holidays
    end
  end
end
