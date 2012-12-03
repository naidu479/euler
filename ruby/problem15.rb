# Problem 15 
# Starting in the top left corner in a 20 by 20 grid, how many routes are there to the bottom right corner?

def counter(rows,cols)
  def factorial(n)
    if n == 0
      return 1
    else
      return n * factorial(n-1)
    end
  end

  return factorial(rows+cols)/(factorial(rows)*factorial(cols))
end


p counter(20,20)