#Author: Rebecca Wu (Jasper78)
#Date: 12/27/2017
#This program defines a method to ask the user a question without using the
# "answer" variable. It then tests the method.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Modifies 'ask' method to eliminates the variable 'answer'
def ask question
  while true
    #Prompts user to answer question
    puts ">" + question
      #Records reply from user
      reply = gets.chomp.downcase
      #Return status of reply if valid
      if reply == "yes"
        return true
        break
      elsif reply == "no"
        return false
        break
      #Asks for new reply if not valid
      else
        puts '>Please answer "yes" or "no".'
        puts
      end
  end
end

#Tests the new 'ask' method
taco_fan = ask 'Do you like eating tacos?'
puts
puts ">Taco Fan Status = " + taco_fan.to_s.capitalize
