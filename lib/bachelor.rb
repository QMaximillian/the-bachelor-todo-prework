
require 'pry'

def get_first_name_of_season_winner(data, season)
  season_data = data[season]
  season_data.each do |contestant|
	if contestant["status"] == "Winner"
		return contestant["name"].split(" ")[0]
	end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, category|
  	category.each do |key|
  		if key["occupation"] == occupation
  		return key["name"]
  		# if category[key] = occupation
  		# 	category["name"]
  		end
  	end
end
end


def count_contestants_by_hometown(data, hometown)
	result = 0
	data.each do |season, category|
		category.each do |key|
			if key["hometown"] == hometown
				result += 1
			end
		end
	end
	return result
end

def get_occupation(data, hometown)
  array = []
  data.each do |season, category|
    category.each do |key|
      if key["hometown"] == hometown
        array << key["occupation"]
      end
    end
  end
  array[0]
end

def get_average_age_for_season(data, season)
  total = 0
  people = 0
    data[season].each do |key|
      total += (key["age"]).to_i
      people += 1
    end
    (total/people.to_f).round(0)
end
