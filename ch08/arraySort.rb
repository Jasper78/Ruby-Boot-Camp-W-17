# Author: Rebecca Wu (Jasper78)
# Date: 12/27/2017
# This program sorts an inputted array of strings by alphabetical order.

# Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

# ---------- Preparations -----------------------------------------------------

# Defines a method to check for whether uppercase is present
def upcase?(array)
  new_array = []
  array.each do |thing|
    new_array.push(thing.downcase)
  end
  return new_array != array
end

# Defines a method to check for whether non-letters/spaces are present
def non_letters_spaces?(array)
  return !array.all? do |string|
    string[/[A-Za-z ]+/] == string
  end
end

# Creates empty array to record inputs
user_array = []

# ---------- Records and filters strings from user ----------------------------

# Prompts user to enter strings to be sorted
puts ">Please enter the strings you wish to see sorted, one per line (lowercase"
puts " letters and spaces only please). Press 'enter' on a blank line when you "
puts " are finished."

# Sets conditions that ask for new input if input not valid
while true
  # Records the input as an array of strings
  input = gets.chomp
  user_array = []
  while input != ""
    user_array.push(input)
    input = gets.chomp
  end
  # Returns error if user_array is blank
  if user_array == []
    puts
    puts ">I'm sorry, the program was unable to sort your strings because you"
    puts " did not input any strings. The program cannot sort your strings if"
    puts " you do not tell it what your strings are."
  # Returns error if user_array includes upper case
  elsif non_letters_spaces?(user_array)
    puts
    puts ">I'm sorry, the program was unable to sort your strings because your"
    puts " input included non-letters/spaces. The program is disappointed in"
    puts " your ability to read instructions."
  # Returns error if user_array includes upper case
  elsif upcase?(user_array)
    puts
    puts ">I'm sorry, the program was unable to sort your strings because your"
    puts " input included capital letters. The program is disappointed in your"
    puts " ability to read instructions."
  # Exits loop if array is valid
  else
    break
  end
  # Asks for new user input
  puts
  puts ">Please reenter your strings:"
end

# ---------- Sorts and returns strings to user --------------------------------

# Sorts the strings by alphabetical order
sorted_array = user_array.sort

# Returns a sorted array of strings to the user
print ">Here are your strings in alphabetical order: "
puts sorted_array.join(", ")
