rates = {"EUR" => 0.956531296, "USD" => 1.06, "GBP" => 0.7}


puts "Enter the amount in CHF"
chf = gets.chomp.to_i
puts "Enter your target currency"
target = gets.chomp.upcase
rate = rates[target]

puts "#{chf} CHF equals #{chf * rate} #{target}"