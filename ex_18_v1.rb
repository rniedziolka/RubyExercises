#  In the United Kingdom the currency is made up of pound (£) and pence (p). There are eight coins in general circulation:
#  
#  1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), and £2 (200p).
#  It is possible to make £2 in the following way:
#  
#  1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
#  How many different ways can £2 be made using any number of coins?

nomination = [1, 2]
amount = 200
result = 0

(0..amount/200).each do |p200|
    (0..(amount-p200*200)/100).each do |p100|
        (0..(amount-p100*100-p200*200)/50).each do |p50|
            (0..(amount-p50*50-p100*100-p200*200)/20).each do |p20|
                (0..(amount-p20*20-p50*50-p100*100-p200*200)/10).each do |p10|
                    (0..(amount-p10*10-p20*20-p50*50-p100*100-p200*200)/5).each do |p5|
                        (0..(amount-p5*5-p10*10-p20*20-p50*50-p100*100-p200*200)/2).each  do |p2|
                            result += 1
                            #puts "#{p200} x 200p (#{p200*200})"
                            #puts "#{p100} x 100p (#{p100*100})"
                            #puts "#{p50} x 50p (#{p50*50})"
                            #puts "#{p20} x 20p (#{p20*20})"
                            #puts "#{p10} x 10p (#{p10*10})"
                            #puts "-#{p5} x 5p (#{p5*5})"
                            #puts "--#{p2} x 2p (#{p2*2})"
                            #p1 = amount-p2*2-p5*5-p10*10-p20*20-p50*50-p100*100-p200*200
                            #puts "---#{p1} x 1p"
                            #puts "SUM #{p200*200+p100*100+p50*50+p20*20+p10*10+p5*5+p2*2+p1}, combinations: #{result}"
                            #puts '---'
                        end
                    end
                end
            end
        end
    end
end

puts result
