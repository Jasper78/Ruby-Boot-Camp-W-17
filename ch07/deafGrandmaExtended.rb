#Author: Rebecca Wu (Jasper78)
#Date: 12/25/2017
#This program allows the user to speak to a modified Deaf Grandma.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Begin loop
while true
  ##Program prompts user to speak to Grandma
  ## and records the input as answer
  puts "-What would you like to say to Grandma?"
  answer = gets.chomp
  ##If the next answer is 'BYE'
  ## Grandma first pretends not to hear
  if answer == "BYE"
    puts " HUH?! SPEAK UP, SONNY!"
    ##If answer is 'BYE' again
    ## Grandma again pretends not to hear
    answer1 = gets.chomp
    if answer1 == "BYE"
      puts " HUH?! SPEAK UP, SONNY!"
      ##If answer is 'BYE' a third time
      ## Grandma finally says BYE to you
      ## and the conversation ends
      answer2 = gets.chomp
      if answer2 == "BYE"
        puts " ALRIGHT, BYE SONNY!"
        puts "You have exited the conversation with Grandma."
        break
      end
    end
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
