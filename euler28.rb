#!/usr/bin/env ruby
# Euler 28:
# REDO

def r_spiral_diagonal_sum(n)
  n == 0 ? 1 : 4*(2*n + 1)**2 - 12*n + r_spiral_diagonal_sum(n-1)
end

def i_spiral_diagonal_sum
  sum = 1
  (1..8500).map { |n| sum += 4*(2*n+1)**2 - 6*(2*n+1) + 6 }
  sum
end

require 'benchmark'

Benchmark.bm do |x|
x.report { puts r_spiral_diagonal_sum(8500) }
x.report { puts i_spiral_diagonal_sum }
end