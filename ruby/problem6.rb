# Problem 6
# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sumSqr
  sum = 0
  for x in 1..100
    sum = sum + x**2
  end
  return sum
end

def sqrSum
  return 100.downto(0).inject(:+)**2
end

p sqrSum-sumSqr