#Author: Rebecca Wu (Jasper78)
#Date: 12/26/2017
#This program outputs a formatted Table of Contents from an array.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

##Create an array with all Table components
table = [
  "Table of Contents",
  "Chapter 1:  Getting Started", "page  1",
  "Chapter 2:  Numbers", "page  9",
  "Chapter 3:  Letters", "page 13"
]

#Assign a value to the Table's half_width
half_width = table[1].length

#Output the organized Table of Contents
puts table[0].center(2*half_width)
puts
puts ( table[1].ljust(half_width) + table[2].rjust(half_width) )
puts ( table[3].ljust(half_width) + table[4].rjust(half_width) )
puts ( table[5].ljust(half_width) + table[6].rjust(half_width) )
