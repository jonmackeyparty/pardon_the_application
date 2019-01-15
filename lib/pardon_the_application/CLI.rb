class PardonTheApplication::CLI
  attr_accessor :argument

  def initialize
    @argument = Argument.new
    argument.cli << self
  end

  def start
    self.jordan
    puts "Hi! Let's argue about who's the greatest NBA player of all time!  You've probably only been watching the NBA since 2012, but I'll hear you out anyway.  There are over 3500 athletes to argue about, so let's narrow it down a little."
    self.jordan
    self.player_check
    self.again?
  end

  def player_check
    puts "Let's start with the FIRST LETTER of your champion's LAST NAME.  Type it in."
    letter = gets.strip.downcase
    argument.player_check(letter)
  end

  def player_compare(category, stat, stat_2, player_1, player_2)
    puts "#{stat} #{category}?  You think those are all-time numbers?  #{stat} #{category} is total trash.  Even #{player_2.name} had #{stat_2} #{category}."
  end

  def again?
    puts "Do you want to argue about something else?"
    input_2 = gets.strip.downcase

    if input_2 == 'yes'
      argument.argue
      self.again?
    elsif input_2 == 'no'
      puts "I wouldn't want to get owned any harder than that, either.  Go watch some Hardwood Classics on YouTube or something!"
      self.jordan
    else
      puts "I'm going to interpret that mumbling as surrender.  Adios!"
    end

  end

  def jordan
    puts
    <<-HEREDOC
    KK0kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkOkkOOkOOOkOOOOOOOOOOOOOOkOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOKK
    K0l;,,;;;;;;:::;;::::::::::::::::::::::::::::::::::::::c::cccccc:ccccccccccccccccc::::::::::::::::::::::::::::::::::::::::cxK
    K0c''',,,,,,,,,,,,,,,,,,;;;;;;;;;;;;;;;;;;;;;;:;;;;;;:::::::;::::::::::::::::::::::::;;;;,,::::;,;;;;;;;;;;;;;;;;;;;;;;;;;;d0
    X0c'''''''','''',,,,,,,,,,,,,,,,,,,,,,,,;;;;;;;;;;;;;;;;;;;,,;;;;;;;;;;;;;;;;;;;;;;;;;,,,'';:;:;,,,;;;;;;,,,,,;;,,;;,,,,,,;o0
    X0c.'''''''''.''''''''',,,'',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,',;;,;;;;;;;;;;;;;;;;;;;,,,'''',;;;;',,,,,,,,,,'',,,,,,,,,,,,,,o0
    K0c......''...''''''''''''''''''',,''''',;;;;;;,,,,,,,,,,,,'',,,,,,,,,,,,,,,,,,,,,,,'.......',;,'',;;:;;,,'''',,,,,,,,,,,,,o0
    K0c...........''''''''''''''''''''''''',;:cccc:;,'''',,,,,''',,,,,,,,,,,,,,,,,,,,,,...........,,,;cclllc:;,'.'''''''''''',,dK
    K0c...........''.'''''''''''''''''''.'',;:ccccc:,'.''''','''',,,,,,,,'''',,,,,,,,,'....'''....;:;:clllllc:,'...''''''''''',dK
    X0c..........'''''''''''''''''''''...''',;:::::,'...''''''''''',,,,,'''''''',,,,,,;;.....'...'lc,:clllcc:;'......''''''''',dK
    K0c',,,,,,,,,,,,,,,,,,,,,,,,;;;;,,,,,,,,,,;:;,,''',;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,.........::,;::cc:;,,'',,;,;;;;;;;;;;;dK
    X0l,;,,;;;;;;;;;;;;;;:::;;;:::::::::::;;;;:c;,;;;::::::::::::ccccccccccccccccccccc:,........';:c::::clc;;;::cccccccccc::::cxK
    X0l,,,,,,,,,,,,,,,,,;;;;;;;;;;;;;;;;;;;;:::::;;;;;;;;;;;;;;;;;;;;;;;:::::::::::::::;,'....,,;:::::::cccc:::::::::::ccccccccx0
    X0l,,;,,,;;;;,;;;;;;;;;;;;;;;;;;;;;;;;;:cllll:,,;;;;;:;;;::;:::::;;;:::::::::::::::::;,'..;::::::;:looooc;;;;::::::ccccccccxK
    X0o;;;;;;;;;;;;;;;;:::::::::::::::::::;:cllll:,;::ccccccccccccccccccccccccccccccccccccc:'..:lcccc::looool;;::c::::cccccccccxK
    X0o;:;;;;;:::;;;::::::::::::::::::::::;;:c::c;,;:ccccccccccccccccccccccccccccccccccccccc;..,ccccc::clcclc;;:cc::::cccccccclxK
    X0l;;;,,,;;;;;;;;;;;;;;;;;;;;;;::::::;;;;;,,,,,;;:::::::::;::c:::::::::::::::::::::::c:c;...:ccc::;:;;;;;;;:::;;;::ccccccclxK
    X0c''''''',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,;,,,,,,,,,,,,;,;,',;;;;,,;;;;;;;;;;;;;;;;;;;;;;,...,;;;;;;;;;;;;;;;;,,,,,;;;;;;;;:xK
    X0c'''''''',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'',;;;,,,;;;;,,,,,,,,,,,,,,,,,,....;;;;,,,,,,,,,,,,,,,,;;;;;;;;;:xK
    X0c''''''''',,,,,,,,,,,,''''''',,'',,,,,,,,,,,,,,,,,,,,,,,,,,;;;;;;;;;;;;;;;;;,,;;;;;;;;,....;c::;,,,,,,,',,,,,,;;;;;;;;;,:xK
    X0l:::::::::ccccccccccccccccccccccccccccccccccccccccccccllcclllllllllllllllllllllcllcccc:....:lcccccccccccccccccccccccccccckK
    X0l;;;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;,'....';:::::::::::::,....;lc:;:::::::::::::::::::ccccccxK
    X0l;;;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;'.........';c::::::::;,.....;lc;;::::::::::::::::::::::::cxK
    X0l::::::::::::::::::cccccc::cc::::::ccccccccccccccccccccccccccc,............;:ccccc:;'......;cc::ccccccccccccccccccccc:ccckK
    X0l::::::::ccccccccccccccccccccccccccccccccccccccccccccccccccccc;.............;cccc:'......':llc::cccccccccccccccccccccccclkK
    X0l:::ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc,............;c;,'.......,:lllc::cccccccccccccccccccccccclkK
    X0l:cccccccccccccccccccccccccccccccccccccccccccccccccccccclccccclc;.....................';;clllc::cclccccccccccccccccccccclkK
    X0l:cccccccccccccccccccccccccccccccccccccccccccclccccccccllllc::c:;,'........'........';::;cllll::lllllllcllllcccccccccccclkK
    X0l:cccccccccccccccccccccccccccccccccccccccclllllllllcllc:;;;'..;c,';;,,'..,:c:'...',:cccc:cllllccllllllllllllcclllccccccclkK
    X0o:ccccccccccccccccccccccccclcccccccccccllllllllllllcc;'.......;c;''',;;;;;::c:,.'clllccc:cloolccllllllllllllllllllcccccclxK
    X0l:cccccccccccccccccccccccccclllllllcclllllllllllc:;,'....'...,c:,'''''''''''',,':lllllcc:cloolccllllllllllllllllllllcccclxK
    XOc,,,,,,,,,,,,,,,,,,;:ccccccllllllllllllllllllc:,'..........';:c,',;:ccc;,;;'',,,:lllllcc:cloolcclllllllllllllllllllllllllxK
    XO:''......,,,,,,,,,,,;:c::cclllllllllllllllc:,'........',,,,:c:,,:lllccc:,:c,,cc:llllllcc:cloolcclllllllllllllllllllllllllxK
    XOc;;,....';;;;;;;;;;;:cc::clllllllllllllc:,.......';;:clllc:;,'',:lllcccc:cc;;ll:collllcc:coooocclllllllllllllllllllllllllxK
    XOc;;,'...,;;;;;::::;;:cc::clllllllllll:,......';:clooloooc;,''''';clccc:;;::cllc;:olllllcccooooccloloollolllllllllllllllllxK
    XOc;;,'..',;:;:::::::;:ccc:clllllllll:,......':loooooooooool;''''';clolllc;;;;clc;colllllcccooooccooooolooollllllllllllllllkK
    N0c;;;''',;:;;:::::::;:cc::clllllllc;......,:loooooooooooool:'''''',cccc;cl:;;;:;;coollllcccooooccoooooooooooolllllllllllllkK
    NOc,,'...';;;;;::::::::;';:cllllll:'....,:cloooooooooooooooo:,'','',;:::::;,::,:;:loooolllccooooccooooooooooollllllllllllllxK
    NOc,,'...';;;;;::::::::,.,:cllllc,...';clooooooooooooooooool;,''''';c::odl::cc;;;cooooolllccoddoccloooooollllllllllllllllllxK
    NOc,''...';;;;;::::::::,.,;;;;;,'..';coooooooooooooooooooool;,,,''';:;:cllc:::;;;loooollllccoddolcloooooolllollllllllllllllx0
    XO;..'''',;;;;;::::::::,.'''.....',coooooooooooooooooooooooolc:cccc:;;,;;,,;;;,,cooooolllcccodoolclooooolllllllllllllllllllxK
    NO;.'',,,,;;;,;;;;;;::;'.''.....':looooooooooooooooooooool:;:c:cllolccclcc:;;;:coooooollllccoollcclooooolllllllllllllllllllx0
    NO:''.....'''''''''',,'..'''.',:looooooooooooooooooooooooc;,',,;:cclccloolllllooooooooolll:coolllcloooollllllllllllllllllllx0
    NOc,,'...',;;;:::::::::;;;::cclooooooooooooooooooooooooddc,,,,'''',,,;:cccccccclooooooolllccodoolclllllllllllllllllllllllllx0
    N0l::,...';:cccccllclllllllllllllloolooooooooooooooooooxkc',,',,',,'','''''',,,:lollllllccccodddlccllllllllllllccccllllllllx0
    N0l::,...';:ccccccllllllllllllllllllllllllllllllllloxdolc;'',,,,''''''''''''',;lolllllllcc:codddl:::::::::::::;;;:::::::::cd0
    N0lcc:'.',:ccllllloooollooooooooooooooooooooooddddkOxc:c::;,,,'',,,'''''''',,',okdddddddodolodddlllllolllllllccccllllccclllx0
    NOlcc:'.',:lllllllllllllllooooooooooooooooooooooloxkkdoollol;,'',,,,'''''''',',cooooollllcccodddoclllllllllllllllllllllllllx0
    N0l::;..',;cccccccccllllllllllllllllllllllllll:,'';coxOOdoloool:,,,',,,,',::clccclldollllc::loool:;cccccccccccccccccccccccld0
    N0oll;'.',clllllllooooooooooooooooooooooooodo:'.',;;,,;cdkOxllodc,,,',;cllllooodxkkxdooll:'.'''''..;lllllllllllllllllllllllx0
    N0oll:''';cllllllooooooooooooooooooooodooddo;'',,''......;lkkoclooolclolllodkkxdl:;',lxoc;.........,cllllllllllllllllllllllx0
    N0oll;'.';clllllooooooooooooooooooooodoool:'.'''''....',:lodxdddddddddoloc::;,''''''.'lxo;.........,cllllllllllllllllllllllx0
    N0oll;'.';clllllloooooooooooooooooooolc;,'........';clodddddddddddddddddllc;'....'''..'cxc.........,cllllllllllllllllllllllx0
    N0occ,..';cllllllllloolooooooooooc::;,'........';codddddddddddddddddddddddddl;'.....''..;c'........'clllllllllllllllllllllld0
    N0o:,'..',:cllllllllllloooooool:,'.........',:coddddddddddddddddddddddddddddddo:,'.................'clllllllllllllllllllllld0
    N0l,...''',;cccllllllllllllll:,.........';:lodxdddddddddddddddddddddddddddddddodol:'........,,.....':lllllllllllllllllllllld0
    NOc'..''''',:ccccccclllllll:,'''''..';cloddddddddddddddddddddddddddddddddddddooooool:'.......''....':lllllllllllllllllllllld0
    NO:'..,,''',:ccccccccclll:,'.'...',:loooooodddddddddddddddddddddddddddddddddoooooooool:'.......''..':cllllllllllllccclllllld0
    NO:'..,,''',:cccccccllc:,'...',::clooooooooodddddooodddddddddddddddddddddddddooooooollc:;......',,..:ccllccccccccccccccccccd0
    NO:'..'''.',:cccccoxko;..',;:ccllcllooooooooodddoooooddddddddddddddddddddddooooooooollccc;......',;:ccccccccccccc:::::::cccoO
    NO:'..''''',::codk0KKOd:::cccccllclllloooooodddoooooodddddddddddddddddddddoooooooooollccc;.....'''';llcccc:ccc:::::::::::::oO
    NO:'..''''';clx0KKKKOxolcccccccllclolooooooddddddddddddddddddddddddddddddddooooooooolllcc;.......''';loc:::::::::::;:::::::oO
    NO;..'''',cdddk0KK0kolccccccllllllloooooooddddddddddddddddddddddddddddddddddooooooollllcc;..........',clc::::::::::;;::::::oO
    Nk;'.',cokOkc;cdxdolccclllllllllllloooodddddddddddddddddddddddddddddddddddddoooooooolllcc;.............;cc::::::;;;;;::::::oO
    NO:.':xOOxdl::;:ccccccllllllllllollooooddddddddddddddddddddddddddddddddddooooooooooollcc:;..............;ll:::::;;;:::::;;:lO
    Nk;';x0Kkollllccccccccllllllllloollooooddddddddddddddddddddddddddddddooodoooooooooolllcc:;............'lk0Odc:;;;;;;:::;;;:lO
    Nk;,lOKKKOolccccccccccclllllllloolloooooddddddddddddddddddddddddddddoooooooooooolllllcccc;..........,:oO0000koc;;;;;;;;;;;;lO
    Nk;':dkkdl:;:cccccccccllllllllloollooooododddddddddddddddddddddddddddoooooooooolllllllccc;'..''''...,:cdO0000Oxl:,,;;;;;;;;lO
    Nk;.',;,''';:cccccclllllllllllooolloooooooodddddddddddddddddddddddddddddddooooooolooolllcc:clllllc::::::ldxOOkkxc,,,;;;;;;;lO
    Nk,..'''''';:cccccccccllllllllooollooooooooooddddddoddoodddddoooooooodoooooooooooooolllcc::cllllllc;:::::coxkkOOOkxolllllc:lO
    Nx,..'''''';:::::cccccclllllllllllllllooooooooddoooooooooodddooooooodddoooooooooooollllcc::clccccc:;:::::lxOOOkxkkOOOOkkxdclO
    Nx,.''''''';::::ccccccclllllllllllllllollllllloolollllllooooooooooooooollllllllllllllcc::;;:cccc:::,;;;;;:::;;;;,;;:lllcc:;lO
    Xx;,,,,,,,,;::::c:ccccccccccclllllllllllllllllllllllllllllllllooooooooooooooooooooolllllllloddddddolllllllcccclllllllllccclkK
    N0kxkkkkkkkOOOOOOOOOO000000000000KKKKKKKKKKKKKKKKKKXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXNXXXXXXXXXXXXXXXXXXXKK

    HEREDOC
  end
end


#    if letter =~ /^[a-z]$/
#      puts "OK, '#{letter}'.  Now, what's this athlete's full name?"
#      player_name = gets.strip
#      Player.exist?(letter, player_name)
#      if Player.exist?(letter, player_name) != nil
#            self.argument
#      else
#            puts "You clearly don't know your basketball.  '#{player_name}'?  Not even close.  Try again,  #brain genius.  Or would you rather scurry off now, by typing 'exit' like a coward?"
#            exit = gets.strip
#            self.player_check if exit != "exit"
#      end

#    else
#      puts "Oh, brother.  You don't even know what a letter is?  Smh."
#      self.player_check

#    end


#  def self.argue
#    user_player = User_player.user_player
#    random_sample = Random_player.random_player_generator
#    random_player_2 = Random_player.new(random_sample.name, random_sample.url)
#    puts "#{user_player.name}?  Ok, we can talk about him.  What do you want to argue about?  Points?  #Rebounds?  Assists?  Field Goals?  Efficiency?"
#    input = gets.strip.downcase
#    case input
#    when "points"
#      self.player_compare(user_player, random_player_2, input)
#    when "rebounds"
#      self.player_compare(user_player, random_player_2, input)
#    when "assists"
#      self.player_compare(user_player, random_player_2, input)
#    when "field goals"
#      self.player_compare(user_player, random_player_2, input.gsub(/ /, '_'))
#    when "efficiency"
#      self.player_compare(user_player, random_player_2, input.gsub(/ /, '_'))
#    else
#      puts "That's not a valid choice.  Maybe you're not up to this today?  Try again."
#      self.argument
#    end
#  end
