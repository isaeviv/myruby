require 'Date'
def leap_year?
   Date.leap? DateTime.now.year
end
puts leap_year?