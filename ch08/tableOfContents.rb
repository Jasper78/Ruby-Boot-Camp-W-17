# Author: Rebecca Wu (Jasper78)
# Date: 12/26/2017
# This program outputs a formatted Table of Contents from an array.

# Jasper78's Personalized Coding Style
BEGIN {puts}
END {puts}

# Stores Table components in variables
title = "Table of Contents"
table = [ ["Getting Started", " 1"], ["Numbers", " 9"], ["Letters", "13"] ]

# Defines a method to output the formatted table
def table_of_contents (title, array, width) # BEGIN method def block
  puts title.center(width)
  index = 0
  # I would like to include the index in my each method, but am unsur of how to
  #  do so. The ways I tried ended up passing the "Getting Started" as arr, and
  #  " 1" as the variable index.
  array.each do |arr| # BEGIN each block
    index += 1
    chapter = "Chapter " + index.to_s + ": " + arr[0]
    page = "page " + arr[1]
    if chapter.length > 2*width/3 || page.length > width/3  # BEGIN if block
      puts "I'm sorry, the width was too small for this row to fit."
      # This is to prevent the method from returning a table of contents
      #  where every row is not the same length.
    else
      puts chapter.ljust(2*width/3) + page.rjust(width/3)
      # I chose 2/3s and 1/3s because the page tends to be shorter than the
      #  chapter.
    end  # END if block
  end  # END each block
end # ENG method def block

# Tests our method on table
table_of_contents(title, table, 40)
