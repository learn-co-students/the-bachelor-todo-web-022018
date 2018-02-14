def get_first_name_of_season_winner(data, season)
    # code here
    data.each do |k, v|
        if k == season
            v.each do |i|
                if i.has_value?("Winner")
                    i.each do |k3, v3|
                        return v3.split(" ")[0]
                    end
                end
            end
        end
    end
end


def get_contestant_name(data, occupation)
    # code here
    data.each do |k, v|
        v.each do |i|
            if i.has_value?(occupation)
                i.each do |k3, v3|
                    return v3
                end
            end
        end
    end
end

def count_contestants_by_hometown(data, hometown)
    # code here
    counter = 0
    data.each do |k, v|
        v.each do |i|
            if i.has_value?(hometown)
                counter += 1
            end
        end
    end
    counter
end


def get_occupation(data, hometown)
    # code here
    data.each do |k, v|
        v.each do |i|
            if i.has_value?(hometown)
                i.each do |k3, v3|
                    return v3 if k3 == "occupation"
                end
            end
        end
    end
end

def get_average_age_for_season(data, season)
    # code here
    average = 0
    counter = 0
    data.each do |k, v|
        if k == season
            v.each do |i|
                i.each do |k2, v2|
                    if k2 == "age"
                        average += v2.to_f
                        counter += 1
                    end
                end
            end
        end
    end
    (average / counter).round
end

