#Author: Rebecca Wu (Jasper78)
#Date: 01/01/2018
#This program sorts an array of strings in alphabetical order using recursives.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

# ---------- Defines method to sort an array by alphabetical order ------------

def sort(array_of_strings)
  #Checks array_of_strings for validity
  check_array = []
  array_of_strings.each do |x|
    check_array.push(x[/[a-z ]+/])
  end
  if array_of_strings != check_array
    #Returns error message if not valid
    return (
      "Error: Input is not a valid array, possibly due to the presence of
       characters that are not lowercase letters or spaces in array elements."
      )
  end
  #Returns sorted string
  return recursive_sort(array_of_strings,[])
end

# ---------- Defines an auxiliary method to perform recursive sort ------------

def recursive_sort(unsorted_array, sorted_array)
  while true
    smallest = unsorted_array[0]
    unsorted_array.each do |i|
      next if i >= smallest
      smallest = i
    end
    sorted_array.push(smallest)
    unsorted_array.delete(smallest)
  #break if unsorted_array is blank
  end
end

# ---------- Tests method on arrays -------------------------------------------

#This expression should return error
bad_array1 = ["apple","cat","ul1293"]
bad_array2 = [""]
bad_array3 = ["apple","Cat","bees"]
puts sort(bad_array1)
puts sort(bad_array2)
puts

good_array1 = ["apple","cat","blue"]
good_array2 = ["apple tree","cat","blue"]
good_array2 = ["cat","cat","blue"]
print sort(good_array1)
puts
print sort(good_array2)
puts
