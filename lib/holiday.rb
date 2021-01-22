require 'pry'


#  holiday_supplies=
#     {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }
def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
 
  # holiday_supplies[:summer][:fourth_of_july][1] = "Watermelon"
  return holiday_supplies[:summer][:fourth_of_july][1]

  
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:new_years]=holiday_supplies[:winter][:new_years].push(supply)
  holiday_supplies[:winter][:christmas]=holiday_supplies[:winter][:christmas].push(supply)
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day]= holiday_supplies[:spring][:memorial_day].push(supply)
  # holiday_supplies[:spring][:memorial_day]= holiday_supplies[:spring][:memorial_day].push("Table Cloth") 
end
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
    # holiday_hash[season]=holiday_hash[season].push(holiday_name)
  
  
# holiday_hash[season][holiday_name] = holiday_hash[season][holiday_name].push(supply_array)

  # code here
  # remember to return the updated hash
return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)

 return holiday_hash[:winter].values.flatten
 
#  return a.flatten!

  # return an array of all of the supplies that are used in the winter season
end


def all_supplies_in_holidays(holiday_hash)
   a=[]
   new_hash={}
   holiday_hash.each do |key,val|
    new_outer_key=key.to_s.capitalize!
    inner_hash={}
    inner_vals_list=[]
    puts new_outer_key+ ":"
    val.each do |inner_key,inner_val|

      new_inner_key= inner_key.to_s.split("_").map{|a| a.capitalize!}.join(" ")
      new_inner_val=inner_val.join(", ")

      puts "  "+ [new_inner_key,new_inner_val].join(": ")
      
      

  #return new_hash


    end
    
   end
  
#   a.push(holiday_supplies[:winter].each)
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end
#binding.pry
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_bbq_names=[]
  holiday_hash.each do |key,val|
    val.each do |inner_key,inner_val|
    #  puts inner_val
      #puts inner_key
      if inner_val.include?('BBQ')
      #  puts inner_key
        holiday_bbq_names<<inner_key
      
      end
    end
  end
  return holiday_bbq_names 
end
#binding.pry






