require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  winner = []
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"].split
    end
  end
  winner[0]
end

def get_contestant_name(data, occupation)
  # code here
  output = ""
  data.each do |season, info|
    info.each do |contestant|
      if contestant["occupation"] == occupation
        output = contestant["name"]
      end
    end
  end
  output
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  output = ""
  data.each do |season, info|
    info.each do |contestant|
      if output == ""
        if contestant["hometown"] == hometown
          output = contestant["occupation"]
        end
      end
    end
  end
  output
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
  total = 0.0
  data[season].each do |contestant|
    count += 1
    total += contestant["age"].to_f
  end
  output = total / count
  output.round
end
