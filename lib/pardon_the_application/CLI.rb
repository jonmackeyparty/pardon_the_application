class PardonTheApplication::CLI

  def start
    puts "Hi! You've probably only been watching the NBA since 2012, but I'll hear you out anyway."
    self.player_check
  end

  def player_check
    puts "So...who's the greatest NBA player of all time?"
    input = gets.strip

    if Player.exist?(input) == true
       player = User_player.new(input)
       self.argument(player)
    else
      puts "You clearly don't know your basketball.  '#{input}'?  Not even close.  Try again, brain genius.  Or would you rather scurry off now, by typing 'exit' like a coward?"
      input_2 = gets.strip
      self.player_check if input_2 != "exit"
  end

  end

  def argument(player)
    puts "#{player.name}?  Ok, we can talk about '#{player.nicknames.sample}'.  What do you want to argue about?  Points?  Rebounds?  Assists?  Field Goals?  Player Efficiency?"
    player_2 = Random_player.new
    input = gets.strip.downcase
    case input
    when "points"
      self.player_compare(player, player_2, input)
    when "rebounds"
      self.player_compare(player, player_2, input)
    when "assists"
      self.player_compare(player, player_2, input)
    when "field goals"
      self.player_compare(player, player_2, input.gsub(/ /, '_'))
    when "player efficiency"
      self.player_compare(player, player_2, input.gsub(/ /, '_'))
    else
      puts "That's not a valid choice.  Maybe you're not up to this today?  Try again."
      self.argument(player)
    end
  end

  def player_compare(player, player_2, input)
    stat = player.instance_variable_get('@'+input)
    stat_2 = player_2.instance_variable_get('@'+input)
    puts "#{stat}?  Those are all-time numbers?  #{stat} is total trash.  Even #{player_2.name} had #{stat_2}."
    puts "Do you want to argue about something else?"
    input_2 = gets.strip.downcase

    if input_2 == 'yes'
      self.argument(player)
    elsif input_2 == 'no'
      puts "I wouldn't want to get owned any harder than that, either.  Go watch some Hardwood Classics on YouTube or something!"
    else
      puts "I'm going to interpret that mumbling as surrender.  Adios!"
    end

  end



end
