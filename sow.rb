
def splash_screen
#art for splash_screen
puts ""
puts ""
puts ""
puts "  _______ __            _______ __                     __                  ___"
puts " |_     _|  |--.-----. |     __|  |_.----.-----.-----.|  |_.-----. .-----.'  _|"
puts "   |   | |     |  -__| |__     |   _|   _|  -__|  -__||   _|__ --| |  _  |   _|"
puts "   |___| |__|__|_____| |_______|____|__| |_____|_____||____|_____| |_____|__| "
puts ""
puts "                 _          __                                 _ "
puts "                \\ \\        / /                                | |"
puts "                 \\ \\  /\\  / /   _ _ ____      _____   ___   __| |"
puts "                  \\ \\/  \\/ / | | | '_ \\ \\ /\\ / / _ \\ / _ \\ / _` |"
puts "                   \\  /\\  /| |_| | | | \\ V  V / (_) | (_) | (_| |"
puts "                    \\/  \\/  \\__, |_| |_|\\_/\\_/ \\___/ \\___/ \\__,_|"
puts "                             __/ |                               "
puts "                            |___/                              "
puts ""
puts "                     Only the Tough Survive! (c) JakeSoft Company"
puts ""
puts ""
puts ""
puts ""
end

def show_streets
#art for main screen
puts ""
puts ""
puts "                                   .-~ | ~-."
puts "                                   |   |   |"
puts "                                   |  _:_  |                    .-:~--.._"
puts "                                  .-~~ | ~~-.                 .~  |      |"
puts "               _.-~:.            |     |     |                |   |      |"
puts "              |     | `.         |     |     |                |   |      |"
puts "     _..--~:-.|     |  |         |     |     |                |   |      |"
puts "     |      |  ~.   |  |         |  __.:.__  |                |   |      |"
puts "     |      |   |   |  |       .-\"~~   |   ~~\"-.              |   |      |"
puts "     |      |   |  _|.--~:-.   |       |       |         .:~-.|   |      |"
puts "     |      |   | |      |  ~. |       |   _.-:~--._   .' |   |   |      |"
puts "     |      |   | |      |   | |       |  |   |     |  |  |   |   |      |"
puts "     |      |   | |      |   | |       |  |   |     |  |  |   |   |      |"
puts "     |      |   | |      |   | |       |  |   |     |  |  |   |   |      |"
puts ""
end


def instructions(stuff)
  #give instructions the first time it runs
  puts "             You must use your street smarts and fighting ability to survive"
  puts "                     the hard life that is \"The Streets of Wynwood\"!"
  puts ""
  msg = stuff.status  #print money and weapon
  puts ""
  puts ""
  puts "Press any key to continue..."
  junk = gets
end


def visit_store(stuff)
  #sell a new weapon to the user.
  system "clear"
  puts ""
  puts "               ________                                  .__   "
  puts "              /  _____/  ____   ____   ________________  |  |  "
  puts "             /   \\  ____/ __ \\ /    \\_/ __ \\_  __ \\__  \\ |  |  "
  puts "             \\    \\_\\  \\  ___/|   |  \\  ___/|  | \\// __ \\|  |__"
  puts "               \\______  /\___  >___|  /\___  >__|  (____  /____/"
  puts "                      \\/     \\/     \\/     \\/           \\/"
  puts "                _________ __                        "
  puts "               /   _____//  |_  ___________   ____  "
  puts "               \\_____  \\\\   __\\/  _ \\_  __ \\_/ __ \\ "
  puts "               /        \\|  | (  <_> )  | \\/\\  ___/ "
  puts "              /_______  /|__|  \\____/|__|    \\___  >"
  puts "                      \\/                         \\/ "
  puts ""
  puts "Welcome to the Wynwood general store.".center(80)
  puts "These items are for sale:".center(80)
  puts ""
  puts "🔫 150$".center(80)
  puts "🔪  50$".center(80)
  puts "🗿   1$".center(80)
  puts ""
  puts "Please enter \"gun\",\"knife\",\"art\",\"no thanks\"".center(80)
  puts ""
  msg = stuff.status  #print money and weapon
  puts ""
while true do
  print "[Enter Store Action:] "
  store_action = gets.chomp!
  case store_action
  when "gun"
    stuff.withdraw(150)
    stuff.update_weapon("🔫 ")
    return
  when "knife"
    stuff.withdraw(50)
    stuff.update_weapon("🔪 ")
    return
  when "art"
    stuff.withdraw(1)
    puts "Awesome man, you got this rad piece of art!"
    return
  when "no thanks","q","exit"
        return
  end # case
end #end while loop

end #end def

def head_to_class(stuff)
  #if the user has upgraded their weapon they will survive attack
  system "clear"
  puts ""
  puts "            .______     ______     ______   .___  ___.     __   __  "
  puts "            |   _  \\   /  __  \\   /  __  \\  |   \\/   |    |  | |  | "
  puts "            |  |_)  | |  |  |  | |  |  |  | |  \\  /  |    |  | |  | "
  puts "            |   _  <  |  |  |  | |  |  |  | |  |\\/|  |    |  | |  | "
  puts "            |  |_)  | |  `--'  | |  `--'  | |  |  |  |    |__| |__| "
  puts "            |______/   \\______/   \\______/  |__|  |__|    (__) (__) "
  puts ""
  puts ""
  puts ""
  puts "You are attacked by a pervert in a van!".center(80)
  puts ""
  msg = stuff.display_weapon
  if msg == "🔪 "
    puts "You took several blows, but used your knife and survived!".center(80)
    puts ""
  elsif msg == "🔫 "
    puts "You used your gun and survived safely!!".center(80)
    puts ""
  else
      puts "Ohh no!!  You didn't make it, another victim of \"The Streets of Wynwood\"".center(80)
      puts ""
  end #if
  puts ""
  puts "[Press any key to continue...]"
  junk = gets
end

def sell_crack(stuff)
  #add money to the users account by adding money.
  #use negative value to add money.  crazy hack to save time.  reusing "withdraw" code
  system "clear"
  puts ""
  puts ""
  puts "🍬 🍬 🍬".center(80)
  puts "You sell some crack in a nearby alley.".center(80)
  puts ""
  stuff.withdraw(-100)
  puts "Cha-ching baby!!!  Money +100!!".center(80)
  puts ""
  puts " 💰💰💰 ".center(80)
  puts ""
  msg = stuff.status  #print money and weapon
  puts ""
  puts ""
  puts "[Push any key to continue...]"
  junk = gets
end

def big_part(stuff)

# create the action prompt and main program loop
while true do
  system "clear"
  show_streets
  puts ""
  puts "You're in the \"park jockey\" parking lot on 25th street.".center(80)
  puts "You can: \"visit store\", \"head to class\", \"sell crack\"".center(80)
  puts ""

  stuff.status   #puts "[Money: #{money} Weapon: #{weapon}]"
  print "[Enter Action:] "
  action = gets.chomp!

case action
  #get the action from the user and choose the case
when "visit store"
  puts "Visiting store..."
  visit_store(stuff)

when "head to class"
  puts "heading to class..."
  head_to_class(stuff)

when "sell crack"
  puts "Selling crack..."
  sell_crack(stuff)

when "exit","q"
  break

when "help","-h","?"
  puts ""
  puts "visit store"
  puts "go to class"
  puts "sell crack"
  puts "exit"
  puts ""
  puts "[Press any key to continue...]"
  junk = gets
end #end case
end #loop
end #big part procedure

class Things_to_save
  def initialize(money,weapon)
    @money = money
    @weapon = weapon
  end #end init
  def status
    #show the two variables on the screen
    puts "[Money: #{@money} Weapon: #{@weapon} ]".center(80)
  end
  def withdraw(amount)
    @money -= amount
  end
  def update_weapon(weapon)
    @weapon = weapon
  end
  def display_weapon
    @weapon
  end
end #end class


# main program
system "clear"

# initialize money and weapon variables
stuff = Things_to_save.new(200,"👊")
splash_screen
instructions(stuff)
big_part(stuff)

puts ""
puts ""
puts "Thanks for playing \"The Streets of Wynwood\"!".center(80)
puts ""
puts ""
