# A number chain is created by continuously adding the square of the digits in a number to form a new number until it has # been seen before.
# For example,
# 44 → 32 → 13 → 10 → 1 → 1
# 85 → 89 → 145 → 42 → 20 → 4 → 16 → 37 → 58 → 89
# Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. What is most amazing is that EVERY 
# starting number will eventually arrive at 1 or 89.
# How many starting numbers below ten million will arrive at 89?

def square_of_digits(number)
 number.to_s.split('').map { |x|  x.to_i**2 }.sum
end

def final_product(number)
  if number == 1 || number == 89 
    return number, []
  end 

    arr = [] 

  while number != 1 && number != 89 do
    arr << number
    number = square_of_digits(number)
  end

  return number, arr
end

def count_89(limit)
  arr = []

  value = 0
  (1..limit).each do |i|
    puts "--#{i}-"
    
    # check if already in arr
    if arr.include?(i) 
        
    else
        output, output_arr = final_product(i)
        if output == 89
          arr.concat output_arr
          arr = arr.uniq
          #puts ''
          #print arr
          value += 1
        end
    end
  end
  return value
end

puts "RESULT"
puts count_89(10_000_000)
