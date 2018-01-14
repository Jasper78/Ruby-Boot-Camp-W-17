#Author: Rebecca Wu (Jasper78)
#Date: 12/30/2017
# => This program turns integers into old school Roman Numerals.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Begin defining the method
#Note: This method only takes in strings.
def wedding_number(number_str, wed = true)
 #The parameter "wed" can be set to false to "turn off" the wedding function.

# ---------- Returns error message if input not valid ---------------------
# What if the negative sign is in the wrong place?
# number_str[0] == "-"
  if number_str[/[.0-9\-]+/] != number_str
    return ">I'm sorry, the program can only convert numbers."
  elsif number_str[/[0-9\-]+/] != number_str
    return ">I'm sorry, the program can only convert whole numbers."
  elsif number_str.to_i <= 0
    return ">I'm sorry, the program can only convert numbers greater than 0."
  elsif number_str.to_i >= 3000
    return ">I'm sorry, the program can only convert numbers less than 3000."
  end
# ---------- Sets up conversion -----------------------------------------------

  # Creates arrays for the components of an English number we can return
  ones_place = [
    'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
  ]
  tens_place = [
    'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty',
    'ninety'
  ]
  teenagers = [
    'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
    'seventeen', 'eighteen', 'nineteen'
  ]

  # Create variables to keep track of input conversion
  num_string = ""     # The final product
  left = number_str.to_i  # How much of the number we still have left to write out.
  write = ""          # The part we are writing out right now.

# ---------- Performs conversion ----------------------------------------------

  # Converts the thousands place
  if wed  #No special cases if not wedding number
    if left > 1999 && left < 2100        #Special case: 2000
      num_string += "two thousand"
      left -= 2000
      if left > 0 && wed
        num_string += " and "
      end
    elsif left > 999 && left < 1100      #Special case: 1000
      num_string += "one thousand"
      left -= 1000
      if left > 0 && wed
        num_string += " and "
      end
      # In other cases the thousands place will go into the hundreds place
      # For example "nineteen hundred" rather than "one thousands and nine hundred"
    end
  end

  # Converts the hundreds place
  write = left/100
  left = left - write*100
  if write > 0
    hundreds = ones_place[write-1]
    num_string += hundreds + ' hundred'
    if left > 0 && wed
      # Space between each word of output
      num_string += ' and '
    end
  end

  # Converts the tens place
  write = left/10         # How many tens left?
  left = left - write*10  # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
      # Special exception: 11~19
      num_string += teenagers[left-1]
      left = 0
    else
      num_string += tens_place[write-1]
    end
    if left > 0
      # Space between each word of output
      num_string += ' and '
    end
  end

  # Converts the ones place
  write = left  # How many ones left to write out?
  left = 0      # Subtract off those ones.
  if write > 0
    num_string += ones_place[write-1]
  end

  # Returns num_string
  num_string
end

# ---------- Tests the method -------------------------------------------------

# Prompts user to enter number
puts ">Please enter the number you wish to convert to a wedding number:"
# Runs method
while true
  number = gets.chomp
  result = wedding_number(number)
  puts
  if result.include?("sorry")
    puts result
    puts ">Please reenter:"
  else
    puts ">Your converted number is: " + result
    break
  end
end
