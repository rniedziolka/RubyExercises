# If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.
# {20,48,52}, {24,45,51}, {30,40,50}
# For which value of p ≤ 1000, is the number of solutions maximised?
# a^2+b^2=c^2
# a+b+c = 120
# a+b>c

def right_triangle?(a,b,c)
  a**2+b**2==c**2
end

# puts "true: #{right_triangle?(20,48,52)}"
# puts "false: #{right_triangle?(20,48,51)}"

def triangle_loop(p)
output = []
    (1..p/2).each do |c|
        (1..p/4).each do |b|
            a=p-b-c
            # puts c
            if right_triangle?(a,b,c) 
                output << [a,b,c]
                #puts "a: #{a}, b: #{b}, c: #{c},"
            end 
        end
    end
    output
end

max =0
p_max = 0
(10..1000).each do |p| 
#   puts p
  number_of_triangles = triangle_loop(p).length
  if number_of_triangles > max
    max = number_of_triangles
    p_max = p
  end
end

puts "MAX: #{max}"
puts "p: #{p_max}"

print triangle_loop(840)
