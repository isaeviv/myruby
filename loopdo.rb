#На вход подается целое число. Необходимо вывести все нечетные числа от нуля по это число включительно.

x = gets
x = x.to_i

i = 0
loop do
	puts i if i%2 != 0
	i += 1
	break if i > x
end