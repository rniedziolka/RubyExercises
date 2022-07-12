#Pyramids #1
#Let's consider and array p of length n filled with unique numbers from (1..n) range - for example p=[1,3,4,2,5] (n=5)

#Each number represents height of a pyramid. Assuming, that lower pyramid placed behind the higher pyramid is not visible determine how many pyramids are visible from the beginning (left side), and the end (right side) of the given array. Return result as a hash formatted as follows: {left: x, right: y}

#Example 1:
#Input: p = [1,2,3,4,5]

#Output: { left: 5, right: 1 }

#Explanation: From the left side we can see all 5 pyramids, while from the right side we can only see the highest one

#Example 2:
#Input: p = [4,5,1,2,3]

#Output: { left: 2, right: 2 }

#Explanation: From left side we can see 4, and 5; from right: 5 and 3

pyramids = [1,2,3,4,5]

def visible_from_left(pyramids)
  max = 0
  pyramids.count do |pyramid|
    visible = pyramid > max
    max = [max, pyramid].max
    visible
  end
end

puts hash = {left: visible_from_left(pyramids), right: visible_from_left(pyramids.reverse)}
