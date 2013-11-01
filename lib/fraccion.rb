require "gcd.rb"

class Fraccion

	include Comparable
	attr_accessor :num, :den
	
	def initialize (num, den)
	
		if (den == 0)
			puts "No se puede dividir entre 0"
		else
			@num = num
			@den = den
			mcd = gcd(num, den)
			@num = num/mcd
			@den = den/mcd
		end
	end	
	
	def num()
		@num
	end
	
	def denom()
		@den
	end
	
	def to_s
		"#{@num}/#{@den}"
	end
	
	def flotante
		@num.to_f/@den.to_f
	end
	
	def abs
		nn = @num.abs
		nd = @den.abs
	end
	
	def reciprocal()
		tmp = @num
		@num = @den
		@den = tmp
	end
	
	def -@
		Fraccion.new(-@num, @den)
	end
	
	def +(a)
		if(@den == a.den)
			Fraccion.new(@num+a.num, @den)
		else
			den_com = @den*a.den
			aux = @num*a.den
			aux1 = @den*a.num
			Fraccion.new(aux+aux1, den_com)	
		end	
	end
	
	def -(a)
		if(@den == a.den)
			Fraccion.new(@num-a.num, @den)
		else
			den_com = @den*a.den
			aux = @num*a.den
			aux1 = @den*a.num
			Fraccion.new(aux-aux1, den_com)	
		end	
	end
	
	def *(a)
		Fraccion.new(@num*a.num, @den*a.den)
	end
	
	def /(a)
		Fraccion.new(@num*a.den, @den*a.num)
	end
	
	def <=>(other)
		(self.num.to_f / self.den.to_f) <=> (other.nume.to_f / other.den.to_f)
	end
end
