# Problem 81
# In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by only moving to the right and down, is indicated in bold red and is equal to 2427.
# 131 673 234 103 18
# 201 96  342 965 150
# 630 803 746 422 111
# 537 699 497 121 956
# 805 732 524 37  331
# Find the minimal path sum, in matrix.txt (right click and 'Save Link/Target As...'), a 31K text file containing a 80 by 80 matrix, from the top left to the bottom right by only moving right and down.


def go(name)
  matrix = open(name).map { |line| line.split(',').map { |n| Integer(n) }}
  tmp = Array.new(matrix.size) { Array.new(matrix.size, nil) }
  i,j= 0,0

  tmp[i][j] = matrix[i][j]
  (0...matrix.size).each do |i|
    (0...matrix.size).each do |j|
      next if i == 0 && j == 0
      if i == 0
        tmp[i][j] = tmp[i][j-1] + matrix[i][j] 
      elsif j == 0
        tmp[i][j] = tmp[i-1][j] + matrix[i][j] 
      else
        from_up   = tmp[i-1][j] + matrix[i][j]
        from_left = tmp[i][j-1] + matrix[i][j]
        tmp[i][j] = from_up > from_left ? from_left : from_up
      end
    end
  end
  tmp[matrix.size - 1][matrix.size - 1]
end

p go('matrix.txt')