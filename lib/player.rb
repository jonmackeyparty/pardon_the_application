class Player
  attr_accessor :name, :nicknames, :points, :rebounds, :assists, :field_goals, :player_efficiency

  @@all = ["Dan Majerle", "Karl Malone", "Isaiah Thomas"]

  def self.exist?(input)
    @@all.include?(input)
  end

  def initialize(input)
  end

end

class Random_player < Player
  def initialize
    @name = "Tiny Archibald"
    @nicknames = ["Nate"]
    @assists = "3.1"
  end
end



class User_player < Player
  def initialize(input)
    @name = "#{input}"
    @nicknames = ["The Queen of Scream", "Ice Cream Grandpa", "Joe"]
    @points = "23.5"
    @rebounds = "10.3"
    @assists = "1.3"
    @field_goals = "43%"
    @player_efficiency = "23"
  end
end
