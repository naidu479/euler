# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


def findProduct(n)
  for a in 1..n-2
    for b in 1..n-2
      if a<b 
        c = n - b - a
        if c>b && a ** 2 + b ** 2 == c ** 2
          puts a * b * c
        end
      end   
    end 
  end 
end

findProduct(1000)