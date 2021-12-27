# Программа просто представляет из себя класс автомобиля

class Car
  # snachala opredelim lejbl
  def set_lable(lable)
    @lable = lable
  end

  def get_lable
    @lable
  end

  # potom tip
  def set_type(type)
    @type = type
  end

  def get_type
    @type
  end

  # i god
  def set_date(date)
    @date = date
  end

  def get_date
    @date
  end

  def info
    p "lable: #{@lable}"
    p "type: #{@type}"
    p "date: #{@date}"
  end
end

car1 = Car.new
car1.set_lable("УАЗ")
car1.set_type("Грузовой")
car1.set_date(1980)

car2 = Car.new
car2.set_lable("Волга")
car2.set_type("Легковой")
car2.set_date(2000)

car1.info
car2.info
