fib1=1
fib2=1
limit=4000000
fib3=0
sum=0

 while fib3<limit 
    sum+=fib3 if fib3%2==0
    fib3=fib1+fib2
    fib1=fib2
    fib2=fib3
    
 end

puts sum
