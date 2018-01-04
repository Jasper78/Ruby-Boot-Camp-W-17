#Author: Rebecca Wu (Jasper78)
#Date: 12/25/2017
#This program generates all leap years between any two years
# of the user's choice.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Introduces the program
puts ">Welcome! This is a program that generates all leap years"
puts " between any two years of your choice."
puts

#Prompts user to enter a starting year, start_yr
puts ">Please enter a starting year:"
start_yr = gets.chomp.to_i
puts
#Prompts user to enter an ending year, end_yr
puts ">Please enter an ending year:"
end_yr = gets.chomp.to_i
# Filter ending year
while start_yr >= end_yr
  puts
  puts ">I'm sorry. The ending year has to be after the starting year."
  puts ">Please enter a new ending year:"
  end_yr = gets.chomp.to_i
end

#Sets up two variables to keep track of the leap years
answer = " leap years between " + start_yr.to_s + " and " + end_yr.to_s + ": "
num_leap_yrs = 0

#Create a loop that goes through all numbers from start_yr to end-Yr
x = start_yr
while true
  if x > end_yr
    break
  elsif x%400 == 0 || (x%4 == 0 && x%100 != 0)
    answer += x.to_s + ", "
    num_leap_yrs += 1
  end
  x += 1
end

# Format final answer
puts
if num_leap_yrs == 1  # BEGIN final answer if
  puts ">There is 1 leap year" + answer[11..-3] + "."
else
  puts ">There are " + num_leap_yrs.to_s + answer[0..-3] + "."
end  # END final answer if

# Note: Jasper78 has decided to incorporate a "BEGIN" & "END" comment next to
#  the beginning and end of each "while", "if", and "each" block, to help keep
#  track of the code.
