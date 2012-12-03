# Problem 21
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
# Evaluate the sum of all the amicable numbers under 10000.

require 'prime'

def sum(n)
  def factors_of(number)
    primes, powers = number.prime_division.transpose
    exponents = powers.map{|i| (0..i).to_a}
    divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
    end
    divisors.reject { |i| i==number }
  end
  tmp=0
  factors_of(n).each { |j| tmp += j }
  tmp
end

def amicable_numbers(limit)
  res=0
  for c in 2..limit
    one = sum(c)
    if one>1
      two = sum(one) 
      res+=one+c if c == two && c != one
    end
  end
  # we counted every pair two times like 220+284 & 284+220
  res/2
end
p amicable_numbers 10000