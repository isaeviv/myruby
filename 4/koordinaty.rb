#Вычисляется расстояние между двумя точками по формуле квадрата расстояния
a = {x: 3, y: 7}
b = {x: -1, y: 5}

rasstojanije = Math.sqrt(((b[:x] - a[:x])**2) + ((b[:y] - a[:y])**2))
puts rasstojanije.floor(2)
