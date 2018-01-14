#Author: Rebecca Wu (Jasper78)
#Date: 12/30/2017
# => This program turns integers into English numbers.

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

#Begin defining the method
#Note: This method only takes in strings.
def english_number number_str

# ---------- Returns error message if input not valid ---------------------
# What if the negative sign is in the wrong place?
# number_str[0] == "-"
  if number_str[/[.0-9\-]+/] != number_str
    return ">I'm sorry, the program can only convert numbers."
  elsif number_str[/[0-9\-]+/] != number_str
    return ">I'm sorry, the program can only convert whole numbers."
  elsif number_str.to_i > 999999999999999
    return (
      ">I'm sorry, the program can only convert numbers less than one
      quadrillion (10^15)."
    )
  elsif number_str.to_i < -999999999999999
    return (
      ">I'm sorry, the program can only convert numbers greater than negative
      one quadrillion (-10^15)."
    )
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

  # Special case 0
  if left == 0
    return 'zero'
  end

  # Converts negative sign
  if left < 0
    num_string += "negative "
    left *= -1
  end

  # Converts the trillions place
  write = left/1000000000000         # How many trillions left?
  left = left - write*1000000000000  # Subtract off those trillions.
  if write > 0
    # Perform recursion:
    trillions = english_number(write.to_s)
    num_string += trillions + ' trillion'
    if left > 0
      # Space between each word of output
      num_string += ' '
    end
  end


  # Converts the billions place
  write = left/1000000000         # How many billions left?
  left = left - write*1000000000  # Subtract off those billions.
  if write > 0
    # Perform recursion:
    billions = english_number(write.to_s)
    num_string += billions + ' billion'
    if left > 0
      # Space between each word of output
      num_string += ' '
    end
  end

  # Converts the millions place
  write = left/1000000         # How many millions left?
  left = left - write*1000000  # Subtract off those millions.
  if write > 0
    # Perform recursion:
    millions = english_number(write.to_s)
    num_string += millions + ' million'
    if left > 0
      # Space between each word of output
      num_string += ' '
    end
  end

  # Converts the thousands place
  write = left/1000         # How many thousands left?
  left = left - write*1000  # Subtract off those thousands.
  if write > 0
    # Perform recursion:
    thousands = english_number(write.to_s)
    num_string += thousands + ' thousand'
    if left > 0
      # Space between each word of output
      num_string += ' '
    end
  end

  # Converts the hundreds place
  write = left/100        # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.
  if write > 0
    hundreds = ones_place[write-1]
    num_string += hundreds + ' hundred'
    if left > 0
      # Space between each word of output
      num_string += ' '
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
      num_string += '-'
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
puts ">Please enter the number you wish to convert to English:"
# Reruns method
while true
  number = gets.chomp
  result = english_number(number)
  puts
  if !result.include?("sorry")
    puts ">Your converted number is: " + result
    break
  else
    puts result
    puts ">Please reenter:"
  end
end
