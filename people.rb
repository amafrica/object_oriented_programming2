class Person
  attr_writer :name
  def initialize(name)
    @name = name
  end

  def greetings
    "Hi, my name is #{@name}"
  end

end



class Student < Person

  def learn
    "I get it!"
  end

end



class Instructor < Person

  def teach
    "Everything in Ruby is an Object."
  end

end




chris = Instructor.new("Chris")
cristina = Student.new("Cristina")



# Call greetings
puts chris.greetings
puts cristina.greetings

# Call teach method
puts chris.teach
# Call learn method
puts cristina.learn
