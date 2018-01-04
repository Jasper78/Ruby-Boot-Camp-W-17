#Author: Rebecca Wu (Jasper78)
#Date: 12/28/2017
# => This program turns integers into modern Roman Numerals.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Key
# I = 1    V = 5    X = 10    L = 50
# C = 100  D = 500  M = 1000

# ---------- Records and filters input from user ------------------------------

#Prompts user to enter an integer
puts ">Please enter the number you would like to convert into an modern"
puts " Roman Numeral:"

#Creates a loop records the input and asks for a new input if not valid
while true
  number = gets.chomp
  #Rejects input if not positive integer and asks for a new input
  if number[/[0-9]+/] != number
    puts ">I'm sorry, the program can only convert inputs that are positive"
    puts " integers."
    puts
    puts ">Please renter:"
  elsif number.to_i > 3999 || number.to_i < 1
    puts ">I'm sorry, the program can only convert inputs within the range"
    puts " 1~3999."
    puts
    puts ">Please renter:"
  else
    number = number.to_i
    break
  end
end

# ---------- Converts input into Roman Numerals -------------------------------

#Creates three variables to keep track of input conversion
left = number
write = ""
rom_num = ""

#Creates arrays to keep track of the possible outputs
thousands_place = ["M", "MM", "MMM"]
hundreds_place = ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
tens_place = ["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
ones_place = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]

#Generates the thousands place
if left >= 1000
  write = left/1000
  left = left - write*1000
  rom_num += thousands_place[write-1]
end

#Generates the hundreds place
if left >= 100
  write = left/100
  left = left - write*100
  rom_num += hundreds_place[write-1]
end

#Generates the tens place
if left >= 10
  write = left/10
  left = left - write*10
  rom_num += tens_place[write-1]
end

#Generates the ones place
if left >= 1
  write = left
  left = left - write
  rom_num += ones_place[write-1]
end

# ---------- Returns Roman Numerals to user ------------------------------------
if left == 0
  puts
  puts ">Your converted modern Roman Numeral: " + rom_num
else
  puts
  puts ">An unknown error occurred. Please contact our Help Desk at "
  puts " rwu888@berkeley.edu."
end
