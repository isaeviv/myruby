flag = true
ARGV.each do |arg|
	unless flag
		break		
	end
	case arg.to_i
	when Integer then flag = true
	else flag = false
	end
end

p ARGV

if flag
	p ARGV.max
else
	p "Аргументы неверны"
end
