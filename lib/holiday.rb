require 'pry'

def holiday_supplies_hash
holiday_supplies[:summer][:fourth_of_july][1]
end

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end
  
  
 def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, value|
    value[:christmas] = supply
    value[:new_years] = supply
  end
 end
 
 def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, value|
    value[:memorial_day] = supply
  end
 end
 
 def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   holiday_hash.each do |season, value|
    value[holiday_name] = supply_array
  end
end
 
 def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
 end
 
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map(&:capitalize).join (" ")}: #{supplies.join(", ")}"
    end
  end
 end
 def all_holidays_with_bbq(holiday_hash)
  
  bbq = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq << holiday
      end
    end
  end
    bbq
 end
