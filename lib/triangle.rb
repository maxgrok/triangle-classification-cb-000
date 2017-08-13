class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(first_length, second_length, third_length)
  	@@first_length = first_length
  	@@second_length = second_length
  	@@third_length = third_length
  end

def valid?
    (@@first_length > 0 && @@second_length > 0 && @@third_length > 0) &&
    ((@@first_length + @@second_length > @@third_length) &&
    (@@first_length + @@third_length > @@second_length) &&
    (@@second_length + @@third_length > @@first_length))
  end

  def kind
  	if !valid? 
	  		raise TriangleError 
  	elsif valid? && @@first_length == @@second_length && @@second_length == @@third_length
	     :equilateral
  	elsif valid? && @@first_length == @@third_length || @@first_length == @@second_length || @@second_length == @@third_length
  		 :isosceles
  	elsif valid? && @@first_length != @@second_length && @@second_length != @@third_length && @@first_length != @@third_length
  		 :scalene
  	end
  end
end

class TriangleError < StandardError
	def message
		"This is not a triangle"
	end 
end