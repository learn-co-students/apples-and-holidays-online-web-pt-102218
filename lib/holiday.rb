require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
holiday_hash[:summer][:fourth_of_july][1]  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, stuff)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supply|
        supply << stuff
      end
    end
  end
  holiday_hash
end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
def add_supply_to_memorial_day(holiday_hash, stuff)
  holiday_hash.each do |season, holiday|
    if season ==:spring
      holiday.each do |holiday, supply|
        supply << stuff
      end
    end

  end
  holiday_hash# again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end



  # code here
  # remember to return the updated hash

def all_winter_holiday_supplies(holiday_hash)
  # iterate over holiday_hash
  # use key, value pairs in ||
  # while we have a key in memory
  # extract the values of that key
  result = []
  holiday_hash[:winter].each do |key, values|
    result.push(values)

  end
result.flatten

#binding.pry
#holiday_hash[:winter].to_s.capitalize!

end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"

      holidays.each do |holiday, supply|
        puts "  #{holiday.to_s.split("_").map{|word| word.capitalize!}.join(" ")}: #{supply.join(", ")}"
      end

   end
end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays.push(holiday)
      end
    end
  end
  bbq_holidays
end


    # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
