# Author: Rebecca Wu (Jasper78)
# Date: 12/23/2017
# This program allows the user to interact with Angry Boss.

# Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}
# Program prompts the user to speak to Angry Boss
puts ">You step into your boss's office."
puts "Boss: WELL, WHAT DO YOU WANT?"
reply = gets.chomp.upcase
# Angry Boss responds
puts "Boss: WHADDAYA MEAN \"" + reply + "\"?!? YOU'RE FIRED!!"
puts ">You have been kicked out of your boss's office."
