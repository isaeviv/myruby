#программа возводит одно число в степень другого, минуя оператор ** и метод pow
print "a: "
a = gets.chomp
a = a.to_i

print "n: "
n = gets.chomp
n = n.to_i

def binpow(a,n)

  if n.zero?
    return 1
  end

  if n.odd?
    n -= 1
    return binpow(a, n) * a
  else
    b = binpow(a, n / 2)
    return b * b
  end

end

puts binpow(a,n)
