colors = {
  1 => 'red',
  2 => 'orange',
  3 => 'yellow',
  4 => 'green',
  5 => 'blue',
  6 => 'dark  blue',
  7 => 'indigo'
}
puts "There are allowed colors: #{colors.values}"
print 'Enter the color, please: '
color = gets.chomp

begin
  raise TypeError if colors.key(color).nil?
  puts "Number of color is #{colors.key color}"
rescue TypeError
  puts "You entered the wrong color! Please, try again."
end
