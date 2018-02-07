def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"].split().shift()
        end 
      end 
    end 
  end 
  winner
end

def get_contestant_name(data, occupation)
  person = ""
  data.each do |seasons, contestants|
      contestants.each do |contestant|
        if contestant["occupation"] == occupation
          person = contestant["name"]
        end 
      end 
  end 
  person
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          counter += 1
        end 
      end 
  end 
  counter
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |seasons, contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          occupation = contestant["occupation"]
          break
        end 
      end 
  end 
  occupation
end

def get_average_age_for_season(data, season)
  totalage = 0 
  counter = 0 
  average = 0 
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
          totalage += contestant["age"].to_f
          counter += 1
      end 
    end 
  end 
  average = (totalage/counter).round
end
