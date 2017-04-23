# Make a person class that has a name, age, and birthday
#
# josh = Person.new 'Josh', 28
#
# josh.name     # => "Josh"
# josh.age      # => 28
#
# josh.name = 'Joshua'
# josh.name     # => "Joshua"
#
# josh.birthday # => 29
# josh.age      # => 29
#
# josh.birthday # => 30
# josh.age      # => 30
#

class Person
  #setting and getting name and age rather than going through the longer process
  attr_accessor :name, :age

  def initialize(name, age) #initialzize the name and age ojbects
    @name = name
    @age = age
  end

  def birthday #make a birthday method where age increasese with birthday
    @age += 1
  end

end
