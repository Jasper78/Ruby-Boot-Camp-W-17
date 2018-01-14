#Author: Rebecca Wu (Jasper78)
 #Date: 01/01/2018
 #This program sorts both upper and lower case strings in alphabetical order.

 #Jasper78's Personalized Coding Style
 BEGIN {puts}
 END {puts}

 # ---------- Defines method to sort an array of strings by dictionary order ---

 def dictionary_sort(array_of_strings)  #BEGIN def
   #Checks array_of_strings for validity
   check_array = []
   array_of_strings.each do |x|  #BEGIN each
     check_array.push(x[/[A-Za-z ]+/])
   end  #END each
   if array_of_strings != check_array  #BEGIN if
     #Returns error message if not valid
     return (
       "Error: Input is not a valid array, possibly due to the presence of
        characters that are not letters or spaces in array elements."
       )
   end  #END if
   #Returns sorted string
   return recusive_dictionary_sort(array_of_strings,[])
 end  #END def

 # ---------- Defines auxiliary method for dictionary_sort --------------------

 def recusive_dictionary_sort(unsorted_array, sorted_array)  #BEGIN0 def
   # Record the orignal value of the input
   unsorted_array0 = unsorted_array
   unsorted_array.each do |x|  #BEGIN1 downcase each
     x.downcase!
   end  #END1 downcase each
   while true  #BEGIN2 while
     smallest = unsorted_array[0]
     unsorted_array.each do |i|  #BEGIN3 sort each
       next if i >= smallest
       smallest = i
     end  #END3 sort each
     sorted_array.push(smallest)
     unsorted_array.delete(smallest)
     #break if unsorted_array is blank
     if unsorted_array.length == 0  #BEGIN4 if
       break
     end  #END4 if
   end  #END2 while
 end  #END0 def

 # ---------- Tests method on arrays -------------------------------------------

 #This expression should return error
 bad_array1 = ["apple","cat","ul1293"]
 bad_array2 = [""]
 bad_array3 = [";.","apple","cat"]
 puts dictionary_sort(bad_array1)
 puts dictionary_sort(bad_array2)
 puts dictionary_sort(bad_array3)
 puts

 good_array1 = ["apple","cat","blue"]
 good_array2 = ["apple tree","cat","blue"]
 good_array3 = ["apple tree","Cat","blue"]
 print dictionary_sort(good_array1)
 puts
 print dictionary_sort(good_array2)
 puts
 print dictionary_sort(good_array3)
 puts
