#сумма всех целочисленных аргументов
require 'pry'
sum = 0
ARGV.each do |x|
  sum += x.to_i
end
p sum
