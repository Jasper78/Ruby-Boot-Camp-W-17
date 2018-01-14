#Author: Rebecca Wu (Jasper78)
 #Date: 01/01/2017
 #This program

 #Jasper78's Personalized Coding Style
 BEGIN {puts}
 END {puts}

 # ---------- Defines method to shuffle input ---------------------------------
def shuffle(array_of_strings)  #BEGIN def
  if array_of_strings == []
    #Returns error message if blank
    return "Error: Input is blank."
  end
  #Returns shuffled string
  return recursive_shuffle(array_of_strings,[])
end  #END def


 # ---------- Defines an auxilary method to shuffle input ---------------------
def recursive_shuffle(unshuffled_array,shuffled_array)  #BEGIN def
  # Record the original values of the variables
  unshuffled_array0 = unshuffled_array
  shuffled_array0 = shuffled_array
  while true  #BEGIN while
    rand_index = rand(unshuffled_array.length) - 1
    shuffled_array.push(unshuffled_array[rand_index])
    unshuffled_array.delete_at(rand_index)
    if shuffled_array == unshuffled_array0
      # To prevent an identical array from being returned
      unshuffled_array = unshuffled_array0
      shuffled_array = shuffled_array0
    elsif unshuffled_array.length == 0
      # Shuffle finished
      break
    end
  end  #END while
  return shuffled_array
end  #END def

# ---------- Records user input -----------------------------------------------

# Prompts user to enter strings to be sorted
puts ">Please enter the strings you wish to see sorted, one per line (lowercase"
puts " letters and spaces only please). Press 'enter' on a blank line when you "
puts " are finished."

# Records the input as an array of strings
input = gets.chomp
user_array = []
while input != ""
  user_array.push(input)
  input = gets.chomp
end

# ---------- Return ouput -----------------------------------------------------
puts shuffle(user_array)
