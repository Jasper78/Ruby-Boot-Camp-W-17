# Author: Rebecca Wu (Jasper78)
# Date: 12/25/2017
# This program allows the user to speak to a modified Deaf Grandma.

# Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

# Define a variable to keep track of the number of byes
bye_count = 0

while true # Begin conversation loop

  # Program prompts user to speak to Grandma
  puts ">What would you like to say to Grandma?"
  answer = gets.chomp

  # First scenario: BYE
  if answer == "BYE"    # Begin answer if
    bye_count += 1
    if bye_count == 3   # Begin exit if
      puts "    ALRIGHT, BYE SONNY!"  # Grandma finally says BYE to you
      puts ">You have exited the conversation with Grandma." # The conversation ends
      break
    end   # End exit if
    puts "    WHAT DID YOU SAY SONNY?"  # Grandma pretends not to hear

  # Second scenario: all caps
  elsif answer == answer.upcase # Elsif answer is in all caps
    puts "    NO, NOT SINCE #{1930 + rand(21)}!" # Grandma replies w/ a random yr
    bye_count = 0

  # Third scenario: anything else
  else
    puts "    HUH?! SPEAK UP, SONNY!" # Grandma requests that you speak up
    bye_count = 0

  end   # End answer if
  puts

end # End conversation loop
