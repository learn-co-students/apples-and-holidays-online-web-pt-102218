
#let(:holiday_supplies) {
#    {
#      :winter => {
#        :christmas => ["Lights", "Wreath"],
#        :new_years => ["Party Hats"]
#      },
#      :summer => {
#        :fourth_of_july => ["Fireworks", "BBQ"]
#      },
#      :fall => {
#        :thanksgiving => ["Turkey"]
#      },
#      :spring => {
#        :memorial_day => ["BBQ"]
#      }
#    }
#  }



require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |holiday, supplies|
    supplies << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday, supply_array)
  # remember to return the updated hash
  holiday_hash[season][holiday] = supply_array
  holiday_hash
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
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
    holidays.each do |holiday, supply|
      puts "  #{holiday.to_s.split("_").map{|word| word.capitalize}.join(" ")}: #{supply.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holiday_array = [ ]
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holidays|
    holidays.map do |day, supplies|
      if supplies.include? ("BBQ")
        bbq_holiday_array << day
      end
    end
  end
  bbq_holiday_array
end







