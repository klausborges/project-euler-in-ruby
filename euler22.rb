#!/usr/bin/env ruby
# Euler 22: Names scores

# Class extension
class String
  # Returns the number of a character in the alphabet or the sum of a string
  def value
    self.chars.map { |c| c.upcase.ord - 64 }.reduce(:+)
  end
end

# Returns the sum of all the index * string value in an array
def sum_scores(array)
  array.each_with_index.map { |name, i| (i+1)*name.value }.reduce(:+)
end

names = File.open("names.txt").readline.split(',').map(&:strip).sort
puts sum_scores(names)