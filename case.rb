weight = gets.chomp
weight = weight.to_i
puts weight.inspect
case weight
  when (1..3)
    puts "Low"
    
  when (4..6)
    puts "High"
else
  puts "Invalid"
end


print while gets