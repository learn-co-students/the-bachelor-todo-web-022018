def get_first_name_of_season_winner(data, season)
  data.each do |se, people|
    if se == season 
      people.each do |details|
        if details["status"] == "Winner"
          return details["name"].split(" ")[0]
        end 
      end
    end 
  end 
end 

def get_contestant_name(data, occupation)
   data.each do |se, people|
      people.each do |details|
        if details["occupation"] == occupation
          return details["name"]
        end 
      end
    end 
end

def count_contestants_by_hometown(data, hometown)
 counter = 0
 data.each do |se, people|
      people.each do |details|
        if details["hometown"] == hometown
          counter += 1
        end 
      end
    end 
    counter
end

def get_occupation(data, hometown)
 data.each do |se, people|
      people.each do |details|
        if details["hometown"] == hometown
          return details["occupation"]
        end 
      end
    end 
end

def get_average_age_for_season(data, season)
  ages = []
   data.each do |se, people|
     if se == season
      people.each do |details|
        ages << details["age"].to_i
      end 
    end 
    end 
  (ages.inject{ |sum, el| sum + el }.to_f / ages.size).round
end
