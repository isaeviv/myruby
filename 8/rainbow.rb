#метод принимает цифру и возвращает цвет радуги
def colors(number)
	colors = {red: 0, orange: 1, yellow: 2 , green: 3, blue: 4, dark_blue: 5, violet: 6}
	colors.key number
end
puts colors(1)