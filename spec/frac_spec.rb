require "lib/frac.rb"

describe Frac do
 before :each do
       @a1 = Frac.new(1,1)
       @b1 = Frac.new(2,2)
	  @c1 = Frac.new(3,2)	
	  @d1 = Frac.new(5,7)
 end
describe "# almacenamiento del numerador" do
    it "Se almacena correctamente el numerador" do
      @a1.num.should eq(1) 
    end
    it "Se almacena correctamente el numerador" do
      @b1.num.should eq(2)  
    end
  end
describe "# almacenamiento del denominador" do
    it "Se almacena correctamente el denominador" do
      @a1.denom.should eq(1)
    end
    it "Se almacena correctamente el denominador" do
      @b1.denom.should eq(2)
    end
  end

describe "Mostrar por pantalla de la forma: a/b" do
		it "Se muestra la fraccion" do
			@b1.to_s.should eq("2/2")
		end
	end
describe "Mostrar en coma flotante" do
		it "Se muestra la forma flotante" do
			@c1.to_f.should eq(1.5)
		end
	end
describe "Ver si dos fracciones son igualles con ==" do
		it "Se comprueba si son iguales las fracciones" do
			d = @a1 == @b1	
			d.should be_false 
		end
	end
describe " Hallar el valor absoluto de la fraccion" do
		it "Halla valor absoluto" do
			@c1.abs.to_s.should eq("3/2")
		end
	end

describe "Reciproco de la fraccion" do
		it "Halla el reciproco" do
			@c1.reciprocal.to_s.should eq("2/3")
		end
	end
describe "Opuesto de la fraccion" do
		it "Halla el opuesto" do
			x = -@a1
			x.a.should eq(-1)
		end
	end

describe "Suma de fracciones" do
		it "Halla la suma" do
			x = @a1 + @c1
			x.to_s.should eq("5/2")
		end
	end
describe "Resta de fracciones" do
		it "Halla la resta" do
			frac = @c1 - @a1
			frac.to_s.should eq("1/2")
		end
	end

describe "Producto de fracciones" do
		it "Halla el producto" do
			x = @c1 * @a1
			x.to_s.should eq("3/2")
		end
	end

describe "#Division de fracciones" do
		it "Halla la division" do
			x = @c1 / @d1
			x.to_s.should eq("21/10")
		end
	end

describe "#Resto de fracciones" do
		it "Halla el resto" do
			x = @c1 % @d1
			x.should eq(1)
		end
	end

describe "Comprobar fraccion mayor que otra" do
		it "Comprobacion" do
			x = @c1 > @a1
			x.should be_true
		end
	end

describe "Comprobar fraccion menor que otra" do
		it "Comprobacion" do
			x = @c1 < @a1
			x.should be_false
		end
	end

describe "Comprobar fraccion mayor o igual que otra" do
		it "Comprobacion" do
			x = @c1 >= @a1
			x.should be_true 
		end
	end

describe "Comprobar fraccion menor o igual que otra" do
		it "Comprobacion" do
			x = @c1 <= @a1
			x.should be_false 
		end
	end


end
