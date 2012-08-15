# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def largestPalindrome
  
  def isPlalindrom(numb)
    numb.to_s == numb.to_s.reverse! ? true : false
  end

  max = 0
  999.downto(99) { |x| 
    999.downto(99) { |y| 
      if isPlalindrom(x*y) && max<(x*y)
        max = x*y
      end  
    } 
  }
  puts max
end

largestPalindrome