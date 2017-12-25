#Jasper78's Personalized Coding Style
BEGIN {
  puts
}
END {
  puts
}

##Assign variables to all Table commponents
title = "Table of Contents"
chap1 = "Chapter 1:  Getting Started"
p1 = "page  1"
chap2 = "Chapter 2:  Numbers"
p2 = "page  9"
chap3 = "Chapter 3:  Letters"
p3 = "page 13"

#Assign a value to the Table half_width
half_width = chap1.length

#Output the ordered Table of Contents
puts title.center(2*half_width)
puts
puts ( chap1.ljust(half_width) + p1.rjust(half_width) )
puts ( chap2.ljust(half_width) + p2.rjust(half_width) )
puts ( chap3.ljust(half_width) + p3.rjust(half_width) )
