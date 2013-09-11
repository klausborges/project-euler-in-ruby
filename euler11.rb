#!/usr/bin/env ruby
# Euler 11: Largest product in a grid

# Reads grid as a line and space separated sequence of numbers and puts it into
# an array of arrays of integers, representing a matrix
G = File.readlines("grid.txt").map { |s| s.strip.split.map(&:to_i) }

# Returns the largest product of 4 adjacent numbers in all directions
def largest_grid_product
  max = 0
  (0..G.size-4).each do |i|
    (0..G[i].size-4).each do |j|
      max = [ max,
              G[i][j]*G[i+1][j]*G[i+2][j]*G[i+3][j],       # vertical product
              G[i][j]*G[i][j+1]*G[i][j+2]*G[i][j+3],       # horizontal product
              G[i][j]*G[i+1][j+1]*G[i+2][j+2]*G[i+3][j+3], # diagonal products
              G[i][j+3]*G[i+1][j+2]*G[i+2][j+1]*G[i+3][j]
            ].max
    end
  end
  max
end

puts largest_grid_product