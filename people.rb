# class Person
#   attr_writer :name
#   def initialize(name)
#     @name = name
#   end
#
#   def greetings
#     "Hi, my name is #{@name}"
#   end
#
# end
#
#
#
# class Student < Person
#
#   def learn
#     "I get it!"
#   end
#
# end
#
#
#
# class Instructor < Person
#
#   def teach
#     "Everything in Ruby is an Object."
#   end
#
# end
#
#
#
#
# chris = Instructor.new("Chris")
# cristina = Student.new("Cristina")
#
#
#
# # Call greetings
# puts chris.greetings
# puts cristina.greetings
#
# # Call teach method
# puts chris.teach
# # Call learn method
# puts cristina.learn

## ASSIGNMENT REVISIT

#4
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

#5
  def greeting
    puts "Sup! My name is #{name}."
  end
end


#1
class Student < Person

#2
  def learn
    puts "I get it!"
  end

end


class Instructor < Person

#3
  def teach
    puts "Everything in Ruby is an Object."
  end

end

#6
chris = Instructor.new("Chris")

#7
cristina = Student.new("Cristina")


chris.greeting
cristina.greeting

#8
chris.teach
cristina.learn
