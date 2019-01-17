class Player
  attr_accessor :name, :url, :nicknames, :points, :rebounds, :assists, :field_goals, :player_efficiency

  def self.exist?(letter, player_name)
    player_search = self.player_scrape(letter).detect{|p| p[0] == player_name}
  end

  def self.player_scrape(letter)
    doc = Nokogiri::HTML(open("https://www.basketball-reference.com/players/" + letter))
    doc.search("th a").collect{|p| [p.text, p.attr("href")]}
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
    random_sample = Player.player_scrape(letter).sample
  end

end

class Great_player < User_player

  def self.great_player_generator(url, category, player)
    doc = Nokogiri::HTML(open("https://www.basketball-reference.com/leaders/" + url))
    top_dog = doc.search("#all_tot tr td a").collect{|p| [p.text, p.attr("href")]}.first
    great_sample = doc.search("#all_tot tr td a").collect{|p| [p.text, p.attr("href")]}[0..25].sample
    great_player = Great_player.new(great_sample[0], "http://basketball-reference.com" + great_sample[1])
    instance_name = "@#{category}"
    if player.instance_variable_get(instance_name).to_f >= great_player.instance_variable_get(instance_name).to_f
      great_player = Great_player.new(top_dog[0], "http://basketball-reference.com" + top_dog[1])
    else
      great_player
    end
  end

end
