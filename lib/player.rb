class Player
  attr_accessor :name, :url, :nicknames, :points, :rebounds, :assists, :field_goals, :player_efficiency

  @@all = []#"Dan Majerle", "Karl Malone", "Isaiah Thomas"]

  def self.all
    @@all
  end

  def self.exist?(input)
    @@all.include?(input)
  end

  def initialize(name, url)
    @name = name
    @url = url
    @points = nil
    @@all << self
  end

  def self.delete
    @@all.clear
  end


  def self.player_scrape
    doc = Nokogiri::HTML(open("https://www.basketball-reference.com/players/y"))
    doc.search("th a").each do |p|
      Player.new(p.text, "http://basketball-reference.com" + p.attr("href"))
    end

    #how to iterate through each letter of the alphabet in the url

    # Avi at 53:36 of the CLI Gem walkthrough

  end

  def self.add_attributes
    Player.all.each do |player|
      doc = Nokogiri::HTML(open(player.url))
      stats = []
      doc.css("div .stats_pullout p").each do |a|
          stats << a.text
        end
        stats.reject!(&:empty?)
          if stats.include?("2018-19") == true

            player.points = stats[5]
            player.rebounds = stats[7]
            player.assists = stats[9]
            player.field_goals = stats[11]
            player.player_efficiency = stats[20]

          else

            player.points = stats[2]
            player.rebounds = stats[3]
            player.assists = stats[4]
            player.field_goals = stats[5]
            player.player_efficiency = stats[9]
          end

    end
  end


end

class Random_player < Player
  #random_player will just store a .sample from the @@all array of player objects
  def initialize
    @name = "Tiny Archibald"
    @nicknames = ["Nate"]
    @assists = "3.1"
  end
end



class User_player < Player
  #user_player will just store the output of a name search in a variable
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
