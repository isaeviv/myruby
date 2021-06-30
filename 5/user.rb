# Класс пользователя с полями для ФИО.

class User
  def set_firstname(firstname)
    @firstname = firstname
  end

  def firstname
    @firstname
  end

  def set_secondname(secondname)
    @secondname = secondname
  end

  def secondname
    @secondname
  end

  def fullname
    @fullname = @firstname + ' ' + @secondname
  end

end

user = User.new

user.set_firstname("Ilya")
user.set_secondname("Isaev")

p user.firstname
p user.secondname

p user.fullname
