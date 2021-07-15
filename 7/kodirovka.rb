about = <<~here
			Программа кодирует данные о геометрической фигуре в целое число.
			На вход программа потребует несколько параметров, в следующем порядке:
			1 Тип фигуры
			2 Координата Х
			3 Координата У
			4 Цвет фигуры
		here

puts about

print "Тип фигуры: #{type = gets.chomp}"
type = type.to_i

print "Координата Х фигуры: #{x = gets.chomp}"
x = x.to_i

print "Координата У фигуры: #{y = gets.chomp}"
y = y.to_i

print "Цвет фигуры: #{color = gets.chomp}"
color = gets.chomp
color = color.to_i




