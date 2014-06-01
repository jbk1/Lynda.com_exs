# =============================

# Working on initislization.

class Animal
	attr_accessor :name
	attr_accessor :noise 
	attr_writer :color
	attr_reader :legs, :arms

# defining class variables here:
	@@species = ['cat','cow','dog','duck','horse','pig']
	@@current_animals = []

# All of the self.methods below are the class methods:

#  Writer method for the .species class variable:
	def self.species=(array=[])
		@@species = array
	end

# Reader method for the @@species class variable:
	def self.species
		@@species
	end

# Reader method for the @@current_animals clss variable:
	def self.current_animals
		@@current_animals
	end

# An 'attribute creator' method for class Animal:
	def self.create_with_attributes(noise, color)
	animal = self.new(noise)
	animal.color = color
	return animal
	end

# Methods below here are all instance methods:
	def initialize(noise, legs=4, arms=0)
		@noise = noise
		@legs = legs
		@arms = arms
	@@current_animals << self
	puts "A new animal has been instantiated"
	end

	def noise= (noise)
		@noise = noise
	end
	
	def noise
		@noise
	end
	
	def color
		"Animal1 color is #{@color}"
	end

end

class Cow < Animal

	def color
		"The cow\'s color is #{color}."
	end

end

# and below here is simply where we call the methods:
Animal.species = ['frog','fish']
puts Animal.species.inspect

animal1 = Animal.new("moo",4,0)
animal1.name= "Steve"	
puts animal1.name		
animal1.color= "black"	
puts animal1.color		
puts animal1.legs		
puts animal1.arms		
puts animal1.noise      

animal2 = Animal.create_with_attributes("quack", "white")
puts animal2.noise
puts animal2.color

puts Animal.current_animals.inspect

maisie = Cow.create_with_attributes('moo', 'yellow')
puts maisie.noise
puts animal1.class
puts maisie.class
puts maisie.color