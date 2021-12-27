# как с радугой, только с днями недели
def week(number)
	days = {sunday: 1, monday: 2, tuesday: 3, wednesday: 4, 
		thursday: 5, friday: 6, saturday: 7}
	days.key number
end

puts week(3)