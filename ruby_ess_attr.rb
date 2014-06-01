# =============================

# Working on Classes & instances.

class Animal
# 5) setting new attributes:
	attr_accessor :name
	attr_writer :color
	attr_reader :legs, :arms # reader only as these attributes would not change.


	def noise= (noise)
		@noise = noise
	end
# 1) DEFINING NOISE: Or the shortcut for a writer method is, above and below are the same:
	attr_writer :noise


	def noise
		@noise
	end
# 2) Or the shortcut for a reader method is, above nd below are the same:
	attr_reader :noise


# 3) Or the shortcut for reader and writer methods in one is as below:
	attr_accessor :noise 


# 4) Then we go back to using the attr_..... methods to write or read other attributes into instance variables, go to no 5) above.

	def color	# 6)
		"Animal1 color is #{@color}"
	end

	def setup_limbs
		@legs = 4
		@arms = 0
	end
end

animal1 = Animal.new
animal1.setup_limbs
animal1.noise= "baaah"
animal1.name= "Steve"	# write the name attribute value
puts animal1.name		# read the name attribute value
animal1.color= "black"	# write the color
puts animal1.color		# read the color, ran error as only attr_writer written, wrote a separate method color, see 6)
puts animal1.legs		# read the legs attribute, which we set within setup_limbs method, as with arms
puts animal1.arms		# read the arms attribute
puts animal1.noise      # read the noise attribute


animal2 = Animal.new
animal2.noise= "quack"	
puts animal2.noise


