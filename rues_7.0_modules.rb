load 'person.7.0.rb'

class Person
	include ContactInfo
end

class Teacher
	include ContactInfo
	attr_accessor :lesson_plans
end

class Student < Person
	attr_accessor :books, :grades
end

