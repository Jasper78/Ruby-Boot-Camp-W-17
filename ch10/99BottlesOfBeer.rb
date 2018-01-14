#Author: Rebecca Wu (Jasper78)
#Date: 12/31/2017
#This program generates the lyrics of "Ninety-Nine Bottles of Beer".

#Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

# ---------- Defines method to state number of bottles in English -------------

def bottles_in_English(num_bottles)

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
  left = num_bottles  # How much of the number we still have left to write out.
  write = ""          # The part we are writing out right now.

# ---------- Performs conversion ----------------------------------------------

  # Converts the thousands place
  write = left/1000         # How many thousands left?
  left = left % 1000  # Subtract off those thousands.
  if write > 0
    # Perform recursion:
    thousands = bottles_in_English(write)
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
  write = left/10
  left = left - write*10
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

  # Returns num_string capitalized
  num_string.capitalize
end

# ---------- Prints lyrics of song --------------------------------------------

bottles = 999999
while bottles >= 0
  if bottles > 1
    puts bottles_in_English(bottles) + " bottles of beer on the wall,"
    puts bottles_in_English(bottles) + " bottles of beer."
    puts "Take one down and pass it around,"
   puts bottles_in_English(bottles-1) + " bottles of beer on the wall."
   bottles -= 1
  puts
elsif bottles == 1
  puts "One bottle of beer on the wall,"
  puts "One bottle of beer."
  puts "Take one down and pass it around,"
  puts "No more bottles of beer on the wall."
  bottles -= 1
  puts
elsif bottles == 0
  puts "No more bottles of beer on the wall,"
  puts "No more bottles of beer."
  puts "Go to the store and buy some more,"
  puts (
    "Nine hundred ninety-nine thousand nine hundred ninety-nine bottles of beer
    on the wall."
    )
  bottles -= 1
end
end
