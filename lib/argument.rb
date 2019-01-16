class Argument
  attr_accessor :cli, :user_player, :random_player, :great_player

  def initialize
    @cli = []
  end

  def player_check(letter)
    if letter =~ /^[a-z]$/
      puts "OK, '#{letter}'.  Now, what's this athlete's full name?"
      player_name = gets.strip
      Player.exist?(letter, player_name)
      if Player.exist?(letter, player_name) != nil
          player_var = Player.all.detect{|p| p.name == player_name}
          @user_player = User_player.new(player_var.name, player_var.url)
          self.argue
      else
          puts "'#{player_name}'?  Who or what is that?  Try again, brain genius."
          self.player_check(letter)
      end

    else
      puts "Oh, brother.  You don't even know what a letter is?  Smh."
      cli[0].player_check
    end
  end

  def random_sampler
    random_sample = Random_player.random_player_generator
    @random_player = Random_player.new(random_sample.name, random_sample.url)
  end

  def great_sampler(location)
    great_sample = Great_player.great_player_generator(location)
    @great_player = Great_player.new(great_sample.name, great_sample.url)
  end

  def argue
    self.random_sampler
    puts "#{user_player.name}?  Ok, we can talk about him.  What do you want to argue about?  Points?  Rebounds?  Assists?  Field Goals?  Efficiency?"
    input = gets.strip.downcase
    case input
    when "points"
      self.great_sampler("pts_per_g_career.html")
      self.player_compare(@user_player, @random_player, @great_player, "points", "points per game", "pts_per_g_career.html")
    when "rebounds"
      self.great_sampler("trb_per_g_career.html")
      self.player_compare(@user_player, @random_player, @great_player, "rebounds", "rebounds per game", "trb_per_g_career.html")
    when "assists"
      self.great_sampler("ast_per_g_career.html")
      self.player_compare(@user_player, @random_player, @great_player, "assists", "assists per game", "ast_per_g_career.html")
    when "field goals"
      self.great_sampler("efg_pct_career.html")
      self.player_compare(@user_player, @random_player, @great_player, "field_goals", "FG%", "efg_pct_career.html")
    when "efficiency"
      self.great_sampler("per_career.html")
      self.player_compare(@user_player, @random_player, @great_player, "player_efficiency", "P.E.R", "per_career.html")
    else
      puts "That's not a valid choice.  Maybe you're not up to this today?  Try again."
      self.argue
    end
  end

  def player_compare(player, player_2, player_3, category, description, location)
  instance_name = "@#{category}"
  stat = player.instance_variable_get(instance_name)
  stat_2 = player_2.instance_variable_get(instance_name)
  stat_3 = player_3.instance_variable_get(instance_name)
    if stat_2 == nil || stat_2 == '-' || stat_2.to_f < 1
      self.random_sampler
      self.player_compare(player, @random_player, player_3, category, description, location)
    elsif stat_3.to_f < stat.to_f
      self.great_sampler(location)
      self.player_compare(player, @random_player, player_3, category, description, location)
    else
      cli[0].player_compare(description, stat, stat_2, stat_3, player, player_2, player_3)
    end
  end

end
