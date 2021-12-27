#программа вычисляет возраст по аргументам 
require 'pry'
t = Time.now
puts "Ваш возраст: #{t.year - ARGV.max {|a, b| a.size <=> b.size }.to_i}"
