#Это класс при помощи которого можно посчитать расстояние между двумя точками в
#двумерной системе коонрдинат
#

class Point
  def set_point(x,y)
    @point = {x: x, y: y}
  end

  def get
    @point
  end

  #кишки метода взял из задачки к 4 главе "koordinaty.rb"
  def self.long(point1, point2 )
    rasstojanije = Math.sqrt(((point2.get[:x] - point1.get[:x])**2) + ((point2.get[:y] - point1.get[:y])**2))
    puts " Расстояние между точками #{point1.get} и #{point2.get} = #{rasstojanije.floor(2)}"
  end
end

#создаем обьекты класса
point1 = Point.new
point2 = Point.new

# устанавливаем координаты точек
point1.set_point(3, 6)
point2.set_point(-1, 5)

# выводим расстояние между точками
Point.long(point1, point2)
