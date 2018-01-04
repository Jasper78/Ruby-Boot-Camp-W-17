# Author: Rebecca Wu (Jasper78)
# Date: 12/24/2017
# This program allows the user to speak to Deaf Grandma.

# Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

while true # Begin loop

  # Program prompts user to speak to Grandma
  puts ">What would you like to say to Grandma?"
  answer = gets.chomp  # and records the input as answer

  if answer == "BYE"  # If answer is 'BYE'
    puts "    ALRIGHT, BYE SONNY!"  # Grandma says BYE to you
    puts ">You have exited the conversation with Grandma." # The conversation ends
    break

  elsif answer == answer.upcase   # Elsif answer is in all caps
    puts "   NO, NOT SINCE #{1930 + rand(21) }!" # Grandma replies w/ a random yr

  else  # Otherwise
    puts "    HUH?! SPEAK UP, SONNY!" # Grandma requests that you speak up
  end
  puts

end # End loop
