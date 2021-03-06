#Triangle, pentagonal, and hexagonal numbers are generated by the following formulae:

#Triangle         Tn=n(n+1)/2         1, 3, 6, 10, 15, ...
#Pentagonal         Pn=n(3n−1)/2         1, 5, 12, 22, 35, ...
#Hexagonal         Hn=n(2n−1)         1, 6, 15, 28, 45, ...
#It can be verified that T285 = P165 = H143 = 40755.

#Find the next triangle number that is also pentagonal and hexagonal.

require 'set'
p = (20_000..60_000).map { |n| n*(3*n-1)/2 }.to_set
h = (20_000..60_000).map { |n| n*(2*n-1) }.to_set
puts (20_000..60_000).map { |n| n*(n+1)/2 }.detect { |n| p.include?(n) && h.include?(n) }
