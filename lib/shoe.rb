require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition 
  attr_reader :brand

  BRANDS = []			# @@ indicates class variable, not an instance var

  def initialize(brand = "Nike")
     @brand = self.brand=(brand)

    # @brand=(brand)
  end

  							# a custom writer method, a class method
	def brand=(brand)	#Doesn't get called
	  	#binding.pry
		if BRANDS.include?(brand) == false
			BRANDS << brand		
		end
	end


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end