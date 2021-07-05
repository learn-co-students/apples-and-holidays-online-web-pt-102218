require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  element = holiday_supplies[:summer][:fourth_of_july]
  return element[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << "#{supply}"
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  
  holiday_hash.each do |key, value|
  puts "#{key}:".capitalize!
  value.each do |holiday, supply|
     puts "  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: " + supply.join(", ")
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  holidays = []
  holiday_hash.each do |season_name,holidays_hash|
   
   holidays_hash.each do |holidays_name,supply_array|
     
     supply_array.each do |item|
       if item == "BBQ"
          holidays_name
          holidays << holidays_name
       end
     end
   end
 end
 holidays
 end