# Matrix Transposition
# Your program should read matrix from a file, transpose it and write transposed matrix into a file. You can not use tr 
# method available in Ruby. Your program must handle matrix of any size.
# Input:
# 1 2 3 4
# 5 6 7 8
# Output:
# 1 5
# 2 6
# 3 7
# 4 8

input = "1 2 3 4\n5 6 7 8\n9 10 11 12"

A = [[1, 2, 3, 4], [5, 6, 7, 8]]

arr = input.split("\n").map{ |x| x.split(' ') }

B =[[1, 5], [2, 6], [3, 7], [4, 8]]

def display_info(arr)
  (0..arr.length-1).each do |x|
    (0..arr[x].length-1).each do |y|
      puts "x: #{x} y: #{y} value: #{arr[x][y]}"
    end
  end
end

def custom_transpose(arr)
  # initialize output[arr[0].length][arr.length]
  # [[0,0],[]]
  newest_array = Array.new(arr[0].length){Array.new(arr.length)}
  (0..arr.length-1).each do |x|
    (0..arr[x].length-1).each do |y|
      # output[y][x] = arr[x][y]
      newest_array[y][x] = arr[x][y]
    end
  end
  print newest_array
end

custom_transpose(arr)
puts
custom_transpose(B)
