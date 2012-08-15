# Problem 48 
# The series, 1^1 + 2^2 + 3^3 + ... + 101^0 = 10405071317.
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

def series(x,y)
  sum = 0
  for i in 1..x
    sum = sum + i**i
  end
  puts sum % y
end

series(1000,10000000000)