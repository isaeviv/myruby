require 'pry'

class Kot
	attr_accessor :coded, :double_coded, :type

	@double_coded = 0b1 
	@double_coded <<= 22

	def set_type(x)
		@type = x
		case @type
		when "point"
			add_attr @double_coded , 0, 20
		when "circle"
			add_attr @double_coded , 1, 20
		when "triangle"
			add_attr @double_coded , 2, 20
		when "square"
			add_attr @double_coded , 3, 20
		else
			puts "Фигура '#{@type}' не расспознана, проверте правильность написания..."
		end

		return @double_coded	
	end

	def add_attr(figura, attr, rank)
		@double_coded = figura
		@double_coded |= attr << rank
	end
end
binding.pry

about_program = <<~here
			----------------------------------------------------------------------
			Программа кодирует данные о геометрической фигуре в целое число.
			На вход программа потребует несколько параметров. Все параметры задаются целыми числами в следующем порядке:
			 - Тип фигуры
				0 - круг
				1 - треугольник
				2 - квадрат
				3 - точка 

			 - Координата Х
				Коордирана Х должна быть представлена в диапазоне от 0 до 255
			 - Координата У
				Коордирана У должна быть представлена в диапазоне от 0 до 255
			 - Цвет фигуры
				0 - красный
				1 - оранжевый
				2 - желтый
				3 - зеленый
				4 - голубой
				5 - синий
				6 - фиолетовый
			----------------------------------------------------------------------

		here

puts about_program

print "Тип фигуры: "
type = gets.chomp
type = type.to_i

print "Координата Х фигуры: "
x = gets.chomp
x = x.to_i

print "Координата У фигуры: "
y = gets.chomp
y = y.to_i

print "Цвет фигуры: "
color = gets.chomp
color = color.to_i

figura = 1
figura <<= 22



figura |= type << 20

figura |= x << 12

figura |= y << 4

figura |= color


p "Фигура #{figura} %b" %figura





