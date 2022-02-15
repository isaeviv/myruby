def fibonachi(number)
  return 0 if number == 0
  return 1 if number == 1
  return fibonachi(number - 1) + fibonachi(number -2)
end

fibo = fibonachi 50
puts fibo
