#Author: Rebecca Wu (Jasper78)
#Date: 12/28/2017
# => This program turns integers into old school Roman Numerals.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Key
# I = 1    V = 5    X = 10    L = 50
# C = 100  D = 500  M = 1000

# ---------- Records and filters input from user ------------------------------

#Prompts user to enter an integer
puts ">Please enter the number you would like to convert into an old school"
puts " Roman Numeral:"

#Creates a loop records the input and asks for a new input if not valid
while true
  number = gets.chomp
  #Rejects input if not positive integer
  if number[/[0-9]+/] != number
    puts
    puts ">I'm sorry, the program can only convert inputs that are positive"
    puts " integers."
    puts ">Please renter:"
  #Rejects input if not within range
  elsif number.to_i > 4999 || number.to_i < 1
    puts
    puts ">I'm sorry, the program can only convert inputs within the range"
    puts " 1~4999."
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
thousands_place = ["M", "MM", "MMM", "MMMM"]
hundreds_place = ["C", "CC", "CCC", "CCCC", "D", "DC", "DCC", "DCCC", "DCCCC"]
tens_place = ["X", "XX", "XXX", "XXXX", "L", "LX", "LXX", "LXXX", "LXXXX"]
ones_place = ["I", "II", "III", "IIII", "V", "VI", "VII", "VIII", "VIIII"]

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
  puts ">Your converted old school Roman Numeral: " + rom_num
else
  puts
  puts ">An unknown error occurred. Please contact our Help Desk at "
  puts " rwu888@berkeley.edu."
  # Note: This line is mostly for fun. I do not expect this code to ever run,
  #  though it would be interesting if it did.
end
