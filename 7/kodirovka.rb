require 'pry'

class Kot
	attr_accessor :coded, :type, :x, :y, :color

	COLORS = {red: 0, orange: 1, yellow: 2 , green: 3, blue: 4, dark_blue: 5, violet: 6}
	TYPES = {point: 0, circle: 1, triangle: 2, square: 3}

	def initialize
		@coded = 0b1 << 22
		@type = ""
		@x = 0
		@y = 0
		@color = ""
	end

	def set_type(type)
		@type = type.to_sym

		if Kot::TYPES.key? @type
			add_attr Kot::TYPES[@type], 20
		else
			puts "Фигура '#{@type}' не расспознана, проверте правильность написания..."
		end

	end

	def set_x(x)
		@x = x
		add_attr @x, 12
	end

	def set_y(y)
		@y = y
		add_attr @y, 4
	end

	def set_color(color)
		@color = color.to_sym
		
		if Kot::COLORS.key? @color
			add_attr Kot::COLORS[@color], 0
		else
			puts "Цвет '#{@color}' не расспозна, проверте правильность написания..."
		end
	end		

	def code_figure(type , x , y , color)
		set_type type
		set_x x
		set_y y
		set_color color
		double_coded
	end

	def add_attr(attr, rank)
		#attr = attr.to_sym
		@coded |= attr << rank
	end

	def double_coded
		dc = @coded
		'%b' %dc
	end

end
a = Kot.new
binding.pry



=begin
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

figura |= type << 20

figura |= x << 12

figura |= y << 4

figura |= color
=end
