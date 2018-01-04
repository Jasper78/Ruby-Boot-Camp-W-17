# Author: Rebecca Wu (Jasper78)
# Date: 12/24/2017
# This program generates the lyrics of "99 Bottles of Beer".

# Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

bottles = 100
while true
  bottles -= 1
  if bottles > 2
    puts bottles.to_s + " bottles of beer on the wall,"
    puts bottles.to_s + " bottles of beer."
    puts "Take one down and pass it around,"
    puts (bottles-1).to_s + " bottles of beer on the wall."
    puts
  elsif bottles == 2
    puts "2 bottles of beer on the wall,"
    puts "2 bottles of beer."
    puts "Take one down and pass it around,"
    puts "1 bottle of beer on the wall."
    puts
  elsif bottles == 1
    puts "1 bottle of beer on the wall,"
    puts "1 bottle of beer."
    puts "Take one down and pass it around,"
    puts "No more bottles of beer on the wall."
    puts
  elsif bottles == 0
    puts "No more bottles of beer on the wall,"
    puts "No more bottles of beer."
    puts "Go to the store and buy some more,"
    puts "99  bottles of beer on the wall."
    break
  end
end
