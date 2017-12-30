#Author: Rebecca Wu (Jasper78)
#Date: 12/27/2017
#This program sorts an inputted array of strings by alphabetical order.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

# ---------- Preparations -----------------------------------------------------

#Defines a method to check for case
def check_upcase(array)
  new_array = []
  array.each do |thing|
    new_array.push(thing.downcase)
  end
  return new_array != array
end

#Defines a method to check for letters only
def check_letters_spaces_only(string)
  return string[/[A-Za-z ]+/] == string
end

#Creates empty array to record input
user_array = []

# ---------- Records and filters strings from user ----------------------------

#Prompts user to enter strings to be sorted
puts ">Please enter the strings you wish to see sorted, one per line (lowercase"
puts " letters and spaces only please). Press 'enter' on a blank line when you "
puts " are finished."

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
  #Returns error if user_array is blank and asks for new input
  if user_array == [""]
    puts
    puts ">I'm sorry, the program was unable to sort your strings because you"
    puts " did not input any strings. The program cannot sort your strings if"
    puts " you do not tell it what your strings are."
    puts ">Please reenter your strings."
  #Returns error if user_array includes upper case and ask for new input
  elsif check_letters_spaces_only(user_array)
    puts
    puts ">I'm sorry, the program was unable to sort your strings because your"
    puts " input included non-letters/spaces. The program is disappointed in"
    puts " your ability to read instructions."
    puts ">Please reenter your strings."
  #Returns error if user_array includes upper case and ask for new input
  elsif check_upcase(user_array)
    puts
    puts ">I'm sorry, the program was unable to sort your strings because your"
    puts " input included capital letters. The program is disappointed in your"
    puts " ability to read instructions."
    puts ">Please reenter your strings."
  #Exits loop if array is valid
  else
    break
  end
end

# ---------- Sorts and returns strings to user --------------------------------

#Sorts the strings by alphabetical order
sorted_array = user_array.sort

#Returns a sorted array of strings to the user
print ">Here are your strings in alphabetical order:"
puts sorted_array
