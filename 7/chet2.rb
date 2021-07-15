#метод проверяет число на четность при момощи логического И
def chet(a)
  if a & 1 == 1
    return "Не четное"
  else
    return "Четное"
  end
end

a = gets.chomp
a = a.to_i

puts chet(a)
