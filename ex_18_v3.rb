#  In the United Kingdom the currency is made up of pound (£) and pence (p). There are eight coins in general circulation:
#  
#  1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), and £2 (200p).
#  It is possible to make £2 in the following way:
#  
#  1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
#  How many different ways can £2 be made using any number of coins?


# |SUM|   0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
- - - - - - - - - - -
# | 1p|   1 1 1 1 1 1 1 1 1 1 1
# | 2p|   1 1 2 2 3 3 4 4 5 5 6  
# | 5p|.  1 1 2 2 3 4 5 6 7 8 10


amount = 200
coins = [1,2,5,10,20,50,100,200]
result = Array.new(201,0)
result[0] = 1

coins.each do |coin|
  (coin..amount).each do |i|
  result[i] = result[i]+result[i-coin]
  #print result
  #puts '__'
  end
end

puts result
