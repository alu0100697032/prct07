require "lib/fraccion.rb"
require "lib/gcd.rb"

describe Fraccion do

	before :each do
		@f1 = Fraccion.new(1,1)
		@f2 = Fraccion.new(3,2)
		@f3 = Fraccion.new(3,2)
		@f4 = Fraccion.new(-1,1)
	end
	
	describe "# Existen numerador y denominador" do
	
		it "Debe existir un numerador" do
			@f1.num.should eq(1)
		end
		
		it "Debe existir un numerador" do
			@f1.den.should eq(1)
		end
	end
	
	describe "# Metodos de obtencion" do
		
		it "Se debe invocar al metodo num() para obtener el numerador" do
			@f1.num().should eq(1)
		end
		
		it "Se debe invocar al metodo denom() para obtener el denominador" do
			@f2.denom().should eq(2)
		end
	end
	
	describe "# Metodos de mostrar" do
	
		it "Mostrar en formato a/b" do
			@f1.to_s.should eq("1/1")
		end
		
		it "Mostrar en formato flotante" do
			@f2.flotante.should eq(1.5)
		end
		
	end
	
	describe "# Metodo abs" do
		it "Se debe calcular el valor absoluto de una fraccion con el método abs" do
			@f4.num().abs.should eq(1)
		end
	end
	
	describe "# Reciproco" do
		it "Calcular el reciproco de una fraccion con el metodo reciprocal" do
			@f2.reciprocal()
			@f2.num().should eq(2)
			@f2.denom().should eq(3)
			
			
		end
	end
	
	describe "# Multiplicación y división" do
		
		it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
			f7 = @f1*@f2
			f7.num().should eq(3)
			f7.denom().should eq(2)
		end
		it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida"do
			f9 = @f1/@f2
			f9.num().should eq(2)
			f9.denom().should eq(3)
		end	
	end
	
	describe "# Opuesto de una fraccion" do
	
		it "El numerador se multiplica por menos uno" do
			f8 = - @f2
			f8.num.should eq(-3)
		end
	end	
	
	describe "# Suma y resta" do
		
		it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
			f10 = @f2+@f3
			f10.num().should eq(3)
			f10.denom().should eq(1)
		end
		it "Se debe restar dos fracciones con - y dar el resultado de forma reducida"do
			f11 = @f2-@f3
			f11.num().should eq(0)
			f11.denom().should eq(1)
		end	
	end
end
	
