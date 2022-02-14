class User
  def initialize(first_name:nil, second_name: nil, patronymic: nil)
    @first_name = first_name
    @second_name = second_name
    @patronymic = patronymic
  end
  attr_accessor :first_name, :second_name, :patronymic
end

users =[]

for i in (1..3)
  puts 'Enter data for user number ' + i.to_s
  print 'First name: '
  first_name = gets.chomp
  print 'Second name: '
  second_name = gets.chomp
  print 'Patronymic: '
  patronymic = gets.chomp
  users << User.new(first_name: first_name, 
             second_name:second_name, patronymic: patronymic)
end

puts users.map &:first_name
