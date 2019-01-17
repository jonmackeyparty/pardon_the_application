class Player
  attr_accessor :name, :url, :nicknames, :points, :rebounds, :assists, :field_goals, :player_efficiency
  @@all = []

  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.delete
    @@all.clear
  end

  def self.exist?(letter, player_name)
    self.player_scrape(letter)
    Player.all.detect{|p| p.name == player_name}
  end

  def self.player_scrape(letter)
    doc = Nokogiri::HTML(open("https://www.basketball-reference.com/players/" + letter))
    doc.search("th a").each do |x|
      Player.new(x.text, "http://basketball-reference.com" + x.attr("href"))
    end
  end

  def add_attributes(player)
      doc = Nokogiri::HTML(open(player.url))
      stats = doc.css("div .stats_pullout p").collect{|a| a.text}
      stats.reject!(&:empty?)
      if stats.include?("2018-19") == true

        player.points = stats[5]
        player.rebounds = stats[7]
        player.assists = stats[9]
        player.field_goals = stats[11]
        player.player_efficiency = stats[19]

      elsif doc.css("div .p2 h4")[1].text == "FT%"

        player.points = stats[2]
        player.rebounds = stats[3]
        player.assists = stats[4]
        player.field_goals = stats[5]
        player.player_efficiency = stats[7]

      else

        player.points = stats[2]
        player.rebounds = stats[3]
        player.assists = stats[4]
        player.field_goals = stats[5]
        player.player_efficiency = stats[9]
      end
  end

end

class User_player < Player

  def initialize(name, url)
    @name = name
    @url = url
    self.add_attributes(self)
  end

end

class Random_player < User_player

  def self.random_player_generator
    letter = ('a'..'z').to_a.sample
    Player.player_scrape(letter)
    random_player_name = Player.all.sample.name
    random_player = Player.all.find{|p| p.name == random_player_name}
    Player.delete
    random_player
  end

end

class Great_player < User_player

  def self.great_player_generator(var)
    doc = Nokogiri::HTML(open("https://www.basketball-reference.com/leaders/" + var))
    doc.search("#all_tot tr td a").each do |x|
      Player.new(x.text, "http://basketball-reference.com" + x.attr("href"))
    end
    all_time_great_name = Player.all.sample.name
    all_time_great = Player.all.find{|p| p.name == all_time_great_name}
    Player.delete
    all_time_great
  end

end
