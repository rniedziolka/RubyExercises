#The decimal number, 585 = 1001001001 (binary), is palindromic in both bases.
#Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
#(Please note that the palindromic number, in either base, may not include leading zeros.)

#puts 585.to_s(2)

limit=1000000
sum=0
var=1
while var<limit
    #puts var
    if var.to_s == var.to_s.reverse && var.to_s(2) == var.to_s(2).reverse
        sum += var
        var += 1
    else
        var += 1
    end
end
    
puts sum
    

#puts (1..999999).inject(0) {|s,v| s+v.to_i}
