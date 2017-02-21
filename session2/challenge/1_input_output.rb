# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = $stdin.gets.chomp
  # split into seperate integers
  split = input.split.map(&:to_i)
  # perform calculations
  sum = split[0] + split[1]
  difference = (split[0] - split[1])
  product = split[0] * split[1]
  # return results
  print "#{sum}\n#{difference}\n#{product}\n"
end
