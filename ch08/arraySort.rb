#Author: Rebecca Wu (Jasper78)
#Date: 12/27/2017
#This program sorts an inputted array of strings by alphabetical order.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Prepares a method to check for case
def check_upcase(array)
  new_array = []
  array.each do |thing|
    new_array.push(thing.downcase)
  end
  return new_array != array
end

#Creates empty array
user_array = []

#Prompts user to enter strings to be sorted
puts ">Please enter the strings you wish to see sorted, one per line"
puts " (no capitalized letters please). Press 'enter' on a blank line "
puts " when you are finished."
#Sets conditions that ask for new input if input not valid
while true
  #Records the input as an array of strings
  input = gets.chomp
  user_array = []
  user_array.push(input)
  while input != ""
    input = gets.chomp
    user_array = user_array.push(input)
  end
  #Returns error if user_array is blank
  # and asks for new input
  if user_array == [""]
    puts ">I'm sorry, the program was unable to sort your strings"#
    puts " because you did not input any strings. The program cannot"
    puts " sort your strings if you do not tell it what your strings"
    puts " are."
    puts
    puts ">Please reenter your strings."
  #Returns error if user_array includes upper case
  # and asks for new input
  elsif check_upcase(user_array)
    puts ">I'm sorry, the program was unable to sort your strings"
    puts " because you included capital letters. The program is"
    puts " disappointed in your ability to read instructions."
    puts
    puts ">Please reenter yours strings."
  #Exits loop if array is valid
  else
    break
  end
end

#Sorts the strings by alphabetical order
sorted_array = user_array.sort

#Returns a sorted array of strings to the user
print ">Here are your words in alphabetical order:"
puts sorted_array
