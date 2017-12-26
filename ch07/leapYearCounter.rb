#Author: Rebecca Wu (Jasper78)
#Date: 12/25/2017
#This program generates all leap years between any two years
# of the user's choice.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Introduces the program
puts "Welcome! This is a program that generates all leap years"
puts " between any two years of your choice."

#Prompts user to enter a starting year, start_yr
puts "Please enter a starting year:"
start_yr = gets.chomp.to_i
#Prompts user to enter an ending year, end_yr
puts "Please enter an ending year:"
end_yr = gets.chomp.to_i
while true
  if start_yr >= end_yr
    puts "I'm sorry. The ending year has to be after the starting year."
    puts "Please enter a new ending year:"
    end_yr = gets.chomp.to_i
  else
    break
  end
end

#Set up the answer
answer = "Leap years between " + start_yr.to_s + " and " + end_yr.to_s + ": "

#Create a loop that goes through all numbers from start_yr to end-Yr
x = start_yr - 1
while true
  x += 1
  if x > end_yr
    break
  elsif x%400 == 0
    answer += x.to_s + ", "
  elsif x%4 == 0 && x%100 != 0
    answer += x.to_s + ", "
  end
end
#Outputs the answer
final_answer = answer[0..-3] + "."
puts final_answer
