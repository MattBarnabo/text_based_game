##### Text-based Game Challenge

### CODE
# puts 'Enter name:'
# user_name = gets.chomp "\n"

### METHODS
def char_print_speed string, seconds
  string.each_char do |char|
      putc char
      sleep(seconds)
  end
end

def char_print string
  string.each_char do |char|
      putc char
  end
end

### TEXT
# misc
dot_dot_dot = "...\n"
dot_method = char_print(dot_dot_dot)
blink = "blink"
else_statement = 'Thats not a valid option, please choose from the provided options'
input_here = "Please enter input here: "

# intro stage setting
eyes_opening =  "Your eyes slowly open as the room comes into focus.\nYou've awakened on an operating table in an old fallout bunkers medical bay.\nUnsure of where or who you are" 

# intro surroundings
dizzy = "You feel dizzy"
throbbing = "Your head is throbbing"
light = "The surgical light above you is flickering"
tool = "You look around and see a medical tool station with bloody surgical tools"
med_bed = "Behind you is curtain, you see the end of a medical bed with feet sticking out"
first_step ="You slowly swing your legs off the table to stand up" 


# first branch
first_choice = "\nWhat should I do first:\n 1. Check the other persons condition?\n 2. Check to see if the door is unlocked?\n #{input_here}"

# first branch - check person 
fc_option_one_choice = "\n What should I do:\n 1. Look in the bed side table?\n 2. Check out the rusty medicine cabinet?\n #{input_here}" 

# first branch - check person- story
fc_option_one_story = "\nshake.. shake.. 
\n ?????: 'Hey buddy, wake up!'\n *Nothing Happens*\n Theres got to be something I can use to bring them back to consciousness\n Looking around I see a bed side table with two drawers, and a rusty medicine cabinet.\n"

  # first branch - check door 
  fc_if1 = "You reach for the handle and turn it#{dot_method}the handle turns but the door won't budge#{dot_method}it must be locked#{dot_method}"
        
  fc_esif1 ="You walk up to the closest medical bed, and pull back the curtain\nYou find a person laying there\n*They appear to be unconscious*"

    # first branch - check person - check bedside table
        fc_o1_c1 = "1. Open the top drawer?\n" 

        fc_o1_c2 = "2. Open the bottom drawer?\n"
        
        bed_side = "\n I move closer to the bed side table.\n Which drawer should I open first?\n #{fc_o1_c1} #{fc_o1_c2}\n #{input_here}"
       
      # first branch - check person - check bedside table - which drawer
        fc_bedside_table_topdrawer = "\n I pull open the top drawer, it sticks a little.\n Inside I find: a musty Bible, expired pills, and used bandages.\n Nothing in here is useful.\n I close the drawer.\n", 
        
        fc_bedside_table_bottomdrawer = "\nWith some effort I pull open the bottom drawer, inside I see:\n a scalpel and new bandages. Lets take the scapel and new bandages, they might be useful.\n"

      # first branch - check person - check medical cabinet  
        medicine_cabinet = "\nI move closer to the rusty medicine cabinet\n I try to open the medicine cabinet but it won't budge"
    
        fc_o2_c1 = "The medical cabinet is rusted shut, I need to find something to pry it open. Maybe I should check the bed side table.\n"
    
        fc_o2_c2 = "The medical cabinet is rusted shut, but I can pry it open with the scalpel I found!\n POP!\n The medicine cabinets rusted metal door swung open revealing a glass jar labeled smelling salts with only one pouch left in it.\n *grabbing the smelling salts\n ????: I hope these work!\n *The person begins to stir*"






###CODE
=begin
# intro stage setting 
puts "\n"
char_print_speed(blink, 0.1)
char_print_speed(dot_dot_dot, 0.5)
sleep (0.5)

char_print_speed(blink, 0.1)
char_print_speed(dot_dot_dot, 0.5)
sleep (0.5)

char_print_speed(eyes_opening, 0.09)
sleep(0.5)

char_print_speed(dot_dot_dot, 0.75)
sleep (0.5)
puts "\n"

# Intro surroundings
char_print_speed(dizzy, 0.09)
char_print_speed(dot_dot_dot, 0.5)
sleep (0.5)

char_print_speed(throbbing, 0.09)
char_print_speed(dot_dot_dot, 0.5)
sleep (0.5)

char_print_speed(light, 0.09)
char_print_speed(dot_dot_dot, 0.5)
sleep (0.5)

char_print_speed(tool, 0.09)
char_print_speed(dot_dot_dot, 0.5)
sleep (0.5)

char_print_speed(med_bed, 0.09)
char_print_speed(dot_dot_dot, 0.5)
sleep (0.5)

char_print_speed(first_step, 0.09)
char_print_speed(dot_dot_dot, 0.5)
sleep (0.5)
=end


char_print_speed(first_choice, 0.1)
# first branch - door or person 
loop do
    
    first_choice_input = gets.chomp
  if first_choice_input.include?('person') || first_choice_input.include?('1')
    sleep(1)
    puts "\n"
    char_print_speed(fc_esif1, 0.1)
    break
  elsif first_choice_input.include?('door') || first_choice_input.include?('2')
      char_print_speed(fc_if1, 0.1)
      if(first_choice_input.include?('door') && first_choice_input.include?('person')|| first_choice_input.include?('2') && first_choice_input.include?('person')) || first_choice_input.include?('2') && first_choice_input.include?('1') || first_choice_input.include?('door') && first_choice_input.include?('1')
      else char_print_speed(fc_if1, 0.1)
      end

  else 
    puts "#{else_statement}"
    sleep(2)
  end
end



# first branch- check person - story


# first branch - check person - drawer or medicine cabinet
loop do
  puts char_print_speed(fc_option_one_story, 0.1)
  char_print_speed(fc_option_one_choice, 0.1)
  fc_option_one_input = gets.chomp

  if fc_option_one_input.include?('medicine') || fc_option_one_input.include?('2')
   "#{medicine_cabinet}"

        if fc_option_one_input.include?('table') || fc_option_one_input.include?('1')
          "#{fc_o2_c2}"
          break
        else 
          "#{fc_o2_c1}"
          sleep(2)
        end
    
# first branch - check person - check bedside table - which drawer
elsif fc_option_one_input.include?('table') || fc_option_one_input.include?('1')
    "#{bed_side}"

    loop do
      char_print_speed(bed_side, 0.1) 
      which_drawer = gets.chomp            
      if which_drawer.include?('top') || which_drawer.include?('1')  
        char_print_speed(fc_bedside_table_topdrawer, 0.1) 
        sleep(1)
      elsif which_drawer.include?('bottom') || which_drawer.include?('2')
        char_print_speed(fc_bedside_table_bottomdrawer, 0.1)
        break
      else
        puts "#{else_statement}"
        sleep(2)
      end
    end
  else "#{else_statement}"
    speed(0.5)
  end
end