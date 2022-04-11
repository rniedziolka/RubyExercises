# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
# How many circular primes are there below one million?


def circular?(num)
	# Create array of all rotations
	num = num.to_s.split('') 
	rotations = [num]
	# Create the rotations of the numbers if more than 1 digit
	(num.length-1).times do
		a = rotations.last.clone
		a = a << a.shift
		rotations << a
	end
	rotations.all?{|num| prime?(num.join('').to_i)}
end

def prime?(num)
	return false if num < 2
    (2..Math.sqrt(num)).none?{|i| num % i == 0}
end

def circular_up_to(limit)
	count = 0
	limit.downto(2) do |num|
		count += 1 if circular?(num)
	end
	puts count
end

beginning_time = Time.now
circular_up_to(1_000_000)
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
