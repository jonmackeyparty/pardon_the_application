class Argument
  attr_accessor :cli, :user_player, :random_player

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
          #need the player select code from Player.exist?
          @user_player = User_player.new(player_var.name, player_var.url)
          self.argue
      else
          puts "You clearly don't know your basketball.  '#{player_name}'?  Not even close.  Try again, brain genius.  Or would you rather scurry off now, by typing 'exit' like a coward?"
          exit = gets.strip
          self.player_check if exit != "exit"
      end

    else
      puts "Oh, brother.  You don't even know what a letter is?  Smh."
      cli[0].player_check
    end
  end

  def argue
    #@user_player = User_player.user_player
    random_sample = Random_player.random_player_generator
    @random_player = Random_player.new(random_sample.name, random_sample.url)
    puts "#{user_player.name}?  Ok, we can talk about him.  What do you want to argue about?  Points?  Rebounds?  Assists?  Field Goals?  Efficiency?"
    input = gets.strip.downcase
    case input
    when "points"
      self.player_compare_points(@user_player, @random_player)
    when "rebounds"
      self.player_compare_rebounds(@user_player, @random_player)
    when "assists"
      self.player_compare_assists(@user_player, @random_player)
    when "field goals"
      self.player_compare_field_goals(@user_player, @random_player)
    when "efficiency"
      self.player_compare_efficiency(@user_player, @random_player)
    else
      puts "That's not a valid choice.  Maybe you're not up to this today?  Try again."
      self.argue
    end
  end

  def player_compare_points(player, player_2)
    stat = player.points
    stat_2 = player_2.points
    cli[0].player_compare("points per game", stat, stat_2, player, player_2)
  end

  def player_compare_rebounds(player, player_2)
    stat = player.rebounds
    stat_2 = player_2.rebounds
    cli[0].player_compare("rebounds per game", stat, stat_2, player, player_2)
  end

  def player_compare_assists(player, player_2)
    stat = player.assists
    stat_2 = player_2.assists
    cli[0].player_compare("assists per game", stat, stat_2, player, player_2)
  end

  def player_compare_field_goals(player, player_2)
    stat = player.field_goals
    stat_2 = player_2.field_goals
    cli[0].player_compare("percent", stat, stat_2, player, player_2)
  end

  def player_compare_efficiency(player, player_2)
    stat = player.player_efficiency
    stat_2 = player_2.player_efficiency
    cli[0].player_compare("PER", stat, stat_2, player, player_2)
  end

end
