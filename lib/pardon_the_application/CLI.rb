class PardonTheApplication::CLI
  attr_accessor :argument

  def initialize
    @argument = Argument.new
    argument.cli << self
  end

  def start
    self.jordan
    puts "Hi! Let's argue about who's the greatest NBA player of all time!"
    sleep 2
    puts "You've probably only been watching the NBA since 2012, but I'll hear you out anyway."
    sleep 2
    puts "There are over 3500 athletes to argue about, so let's narrow it down a little."
    sleep 2
    self.player_check
    self.again?
  end

  def player_check
    puts "Let's start with the FIRST LETTER of your champion's LAST NAME.  Type it in."
    letter = gets.strip.downcase
    argument.player_check(letter)
  end

  def player_compare(description, stat, stat_2, stat_3, player, player_2, player_3)
    if player.name == player_3.name
      puts "#{player.name}, huh?  Real original.  I mean, have have you ever WATCHED the NBA?  Give me a deep cut, dude.  Everybody in the world knows #{player.name} led the league with #{stat} #{description}.  Try again, and this time don't be so cliche."
    else
      puts "#{stat} #{description}?  You think those are all-time numbers?  #{stat} #{description} is total trash.  Even #{player_2.name}, a known trash player, had #{stat_2} #{description}.  And #{player_3.name} had #{stat_3} #{description}.  You want to talk #{description}?  Look at #{player_3.name}.  Outta here with that #{player.name} stuff."
    end
  end

  def again?
    puts "Do you want to argue about something else?  Type 'yes' or 'no'."
    input_2 = gets.strip.downcase

    if input_2 == 'yes'
      argument.argue
      self.again?
    elsif input_2 == 'no'
      puts "I wouldn't want to get owned any harder than that, either.  Go watch some Hardwood Classics on YouTube or something!"
      sleep(5)
      self.jordan
    else
      puts "I'm going to interpret that mumbling as surrender.  Adios!"
      sleep(3)
      self.jordan
    end

  end

  def jordan
    mj = <<~'JORDAN'


MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM~.....  .  ..   ........:MMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMM.OZOZZZZZZZZZZ.   .Z$$$$$$$7.MMMMMMMMMMMMMMMM
MMMMMMMMMMMMMM+8ZZZZZZZZZZZO      .$$$$$$$$O.MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM OZZZZZZZZZZZ$      .$$$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZZZZZ7     .I$$$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZZZZZO    .=$$$$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZOOZOO:   .=$$$$$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZO~. ..     :Z$$$$$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZO.           ..$$$$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZO.    .         ..7$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZ.                  $$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OO+.                  ~$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OO. .    ..    .  ..  .$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.O.               .$   .$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.,               Z$$=.  $$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM..             ..$$$Z.  ?$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM..             .$$$$$.  .$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.O$Z..    .    .~$$$$7.  +$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OO. .    ..     ?$$$$:. .Z$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OO. .           .Z$$$$.  ,$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.O+...............=$$$$,...I$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.O=               .$$..    ..+,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OO. .    .       .$..   .   . MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OOZ..    .       .Z.    .     MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZO+... ..        ~... ..     MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZ...............Z........,,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZOZI           .Z$?.....$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZO~.         .7$$$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZO,.         .Z$$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZO:.       ...$$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZZZ7.       ..?$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZZZZZ...    . .$$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZZZZZZO.    .  7$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZZZZZZZZ.   .  :$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZZZZZZZZZO.    .$$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZZZZZZZZZZZO..  I$$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZZZZZZZZZZZZZZZZZZZ.   ?$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZO..IO......$ZO...OZ.  ?$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZO...O  . Z+.IO +.OO. .Z$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZO...$  . ?..O:.O ?ZO..Z$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZO. I,  . =..I..O .ZO, =$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZO..O.  . Z$.......OZ= .$$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM.OZO. O=...... O.+O..$Z: .7$$$,MMMMMMMMMMMMMMM
MMMMMMMMMMMMMM+OZZZZZZZZZZZZZZZZZZZZO,...$$Z.MMMMMMMMMMMMMMM
MMMMMMMMMMMMMMM OOZZZZZZZZZZZZZZZZZZZ, .:$7.MMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM:.................... ..:MMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM


  JORDAN
  puts mj
  end
end
