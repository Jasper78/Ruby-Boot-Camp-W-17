#Author: Rebecca Wu (Jasper78)
#Date: 12/27/2017
#This program sorts an inputted array of strings by alphabetical order.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Prompts user to enter strings to be sorted
puts ">Please enter the strings you wish to see sorted, one per line"
puts " (No capitalized letters please). Press enter on a blank line "
puts " when you are finished."
#Records the input as an array of strings
input = gets.chomp
user_array = [].push(input)
while input != ""
  input = gets.chomp
  user_array = user_array.push(input)
end

#Sorts the strings by alphabetical order
sorted_array = user_array.sort
downcased_array = []
sorted_array.each do |string|
  downcased_array = downcased_array.push(string.downcase)
end

#Returns a sorted array of strings to the user
if sorted_array == downcased_array && sorted_array != [""]
  print ">Here are your words in alphabetical order:"
  puts sorted_array
#Or not
  elsif sorted_array == [""]
    puts ">I'm sorry, the program was unable to sort your strings"
    puts " because you DID NOT INPUT ANY STRINGS. The program cannot"
    puts " sort your strings if you do not tell it what your strings"
    puts " are."
  elsif sorted_array != downcased_array
    puts ">I'm sorry, the program was unable to sort your strings"
    puts " because they INCLUDED CAPITAL LETTERS. The program is"
    puts " disappointed in your ability to read instructions."
  else
    puts ">An unknown error occurred. Please contact our Help Desk"
    puts " at rwu888@berkeley.edu."
end
