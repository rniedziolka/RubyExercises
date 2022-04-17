# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

# What is the largest n-digit pandigital prime that exists?

# print arr.permutation.to_a.each{|x| x.join.to_i}

big_array = []
(1..9).each do |x|
    big_array << (1..x).to_a
end

perm_arr =  big_array.map{ |a| a.permutation.to_a }
all_perm_array = perm_arr.flatten(1)
final_array = all_perm_array.map { |x| x.join.to_i }


def prime?(num)
	return false if num < 2
    (2..Math.sqrt(num)).none?{|i| num % i == 0}
end

final_array = final_array.sort.reverse

# print final_array

final_array.each do |x|
    if prime?(x) 
        print x
        return
    end
end
# print prime?(4231)
puts final_array(x)

# https://apidock.com/ruby/Array/flatten

# 7652413➜prime
