# Problem 14
# The following iterative sequence is defined for the set of positive integers:
# n  n/2 (n is even)
# n  3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.


def cain(max)
  
  def even(n)
    return n/2
  end


  def odd(n)
    return (3*n)+1
  end

  maxCount = 0
  maxNum = 0
  count = 1
  
  for i in 1..max
    n = i
    while n>1
       if n%2==0
        n = even(n)
       else
        n = odd(n)
      end
      count = count + 1
    end
    if maxCount<count
      maxCount=count 
      maxNum=i
    end
    count = 1
  end
  puts maxNum

end

cain(1000000)