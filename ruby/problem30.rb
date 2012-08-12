# Problem 30
# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.


def powersDig(n)
  sum = 0
  n.to_s.each_char { |x| sum = sum + x.to_i**5 }
  if sum == n
    return true
  end
  return false
end

temp = 0
for y in 2..1000000
 temp = temp + y if powersDig(y)
end
p temp
