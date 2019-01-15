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
          self.player_check
      end

    else
      puts "Oh, brother.  You don't even know what a letter is?  Smh."
      cli[0].player_check
    end
  end

  def argue
    random_sample = Random_player.random_player_generator
    @random_player = Random_player.new(random_sample.name, random_sample.url)
    puts "#{user_player.name}?  Ok, we can talk about him.  What do you want to argue about?  Points?  Rebounds?  Assists?  Field Goals?  Efficiency?"
    input = gets.strip.downcase
    case input
    when "points"
      great_sample = Great_player.great_player_generator("pts_per_g_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_points(@user_player, @random_player, @great_player)
    when "rebounds"
      great_sample = Great_player.great_player_generator("trb_per_g_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_rebounds(@user_player, @random_player, @great_player)
    when "assists"
      great_sample = Great_player.great_player_generator("ast_per_g_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_assists(@user_player, @random_player, @great_player)
    when "field goals"
      great_sample = Great_player.great_player_generator("efg_pct_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_field_goals(@user_player, @random_player, @great_player)
    when "efficiency"
      great_sample = Great_player.great_player_generator("per_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_efficiency(@user_player, @random_player, @great_player)
    else
      puts "That's not a valid choice.  Maybe you're not up to this today?  Try again."
      self.argue
    end
  end

  def player_compare_points(player, player_2, player_3)
    stat = player.points
    stat_2 = player_2.points
    stat_3 = player_3.points
    if stat_2 == nil || stat_2 == '-' || stat_2.to_f < 1
      random_sample = Random_player.random_player_generator
      @random_player = Random_player.new(random_sample.name, random_sample.url)
      self.player_compare_points(player, @random_player, player_3)
    elsif stat_3.to_f < stat.to_f
      great_sample = Great_player.great_player_generator("pts_per_g_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_points(player, player_2, @great_player)
    else
      cli[0].player_compare("points per game", stat, stat_2, stat_3, player, player_2, player_3)
    end
  end

  def player_compare_rebounds(player, player_2, player_3)
    stat = player.rebounds
    stat_2 = player_2.rebounds
    stat_3 = player_3.rebounds
    if stat_2 == nil || stat_2 == '-' || stat_2.to_f < 1
      random_sample = Random_player.random_player_generator
      @random_player = Random_player.new(random_sample.name, random_sample.url)
      self.player_compare_rebounds(player, @random_player, player_3)
    elsif stat_3.to_f < stat.to_f
      great_sample = Great_player.great_player_generator("trb_per_g_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_rebounds(player, player_2, @great_player)
    else
    cli[0].player_compare("rebounds per game", stat, stat_2, stat_3, player, player_2, player_3)
    end
  end

  def player_compare_assists(player, player_2, player_3)
    stat = player.assists
    stat_2 = player_2.assists
    stat_3 = player_3.assists
    if stat_2 == nil || stat_2 == '-' || stat_2.to_f < 1
      random_sample = Random_player.random_player_generator
      @random_player = Random_player.new(random_sample.name, random_sample.url)
      self.player_compare_assists(player, @random_player, player_3)
    elsif stat_3.to_f < stat.to_f
      great_sample = Great_player.great_player_generator("ast_per_g_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_assists(player, player_2, @great_player)
    else
    cli[0].player_compare("assists per game", stat, stat_2, stat_3, player, player_2, player_3)
    end
  end

  def player_compare_field_goals(player, player_2, player_3)
    stat = player.field_goals
    stat_2 = player_2.field_goals
    stat_3 = player_3.field_goals
    if stat_2 == nil || stat_2 == '-' || stat_2.to_f < 1
      random_sample = Random_player.random_player_generator
      @random_player = Random_player.new(random_sample.name, random_sample.url)
      self.player_compare_field_goals(player, @random_player, player_3)
    elsif stat_3.to_f < stat.to_f
      great_sample = Great_player.great_player_generator("efg_pct_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_field_goals(player, player_2, @great_player)
    else
    cli[0].player_compare("percent", stat, stat_2, stat_3, player, player_2, player_3)
    end
  end

  def player_compare_efficiency(player, player_2, player_3)
    stat = player.player_efficiency
    stat_2 = player_2.player_efficiency
    stat_3 = player_3.player_efficiency
    if stat_2 == nil || stat_2 == '-' || stat_2.to_f < 1
      random_sample = Random_player.random_player_generator
      @random_player = Random_player.new(random_sample.name, random_sample.url)
      self.player_compare_efficiency(player, @random_player, player_3)
    elsif stat_3.to_f < stat.to_f
      great_sample = Great_player.great_player_generator("per_career.html")
      @great_player = Great_player.new(great_sample.name, great_sample.url)
      self.player_compare_efficiency(player, player_2, @great_player)
    else
    cli[0].player_compare("PER", stat, stat_2, stat_3, player, player_2, player_3)
    end
  end

end
