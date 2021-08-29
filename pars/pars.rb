require 'rubyXL'

#регулярное выражение - шаблон почты
VALID_EMAIL_REGEX = /[\w+\-.]+@[a-z\d\-.]+\.\w+/

book = RubyXL::Parser.parse('./crm tel email.xlsx') #Парсим таблицу, кажется в оперативку
book.write('./crm tel email.xlsx') #открываем табличку на запись
list = book['Лист1'] #открываем нужный лист

d = "" #промежуточная переменная для ящиков
masmail = [] #массив для ящиков

for i in (0..1018) #проходим по колонке с кашей	
	if list[i][3] != nil && list[i] != nil && list != nil #пытаемся исключить встречу с nil

		#проверяем каждую ячейку столбца D на ящики и пишем все в masmail
		masmail = list[i][3].value.to_s.scan VALID_EMAIL_REGEX
		masmail.each do |j|#все ящики пишем в d
			d += j + " \n"
		end

		list.add_cell(i, 1, d) if d != "" #записываем в столбец В наши ящики		
		masmail = [] #обнуляй)
		d = ""		#хех
	end
end

book.save #сохраняем файл


