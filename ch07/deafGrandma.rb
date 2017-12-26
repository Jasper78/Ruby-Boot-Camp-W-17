#Author: Rebecca Wu (Jasper78)
#Date: 12/24/2017
#This program allows the user to speak to Deaf Grandma.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Begin loop
while true
  ##Program prompts user to speak to Grandma
  ## and records the input as answer
  puts "-What would you like to say to Grandma?"
  answer = gets.chomp
  ##If answer is 'BYE'
  ## Grandma says BYE to you
  ## and the conversation ends
  if answer == "BYE"
    puts " ALRIGHT, BYE SONNY!"
    puts "You have exited the conversation with Grandma."
    break
  ##Elsif answer is in all caps
  ## Generate a variable, random_yr, between 1930 and 1950
  ## Grandma replies 'NO, NOT SINCE #{random_yr}!''
  elsif answer == answer.upcase
    while true
      random_yr = rand(1950)
      if random_yr > 1930
        break
      end
    end
    puts " NO, NOT SINCE #{random_yr}!"
  ##Else
  ## Grandma replies 'HUH?! SPEAK UP, SONNY!'
  else
    puts " HUH?! SPEAK UP, SONNY!"
  end
#End loop
end
