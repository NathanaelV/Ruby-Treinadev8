# 1
class ArrayUtils
  def self.compara(lista1, lista2)
  	lista1.sort == lista2.sort
  end
  
  def self.divisiveis(x,y)
  	t = []
  	a = Array.new(51) {|z| z}
  	
  	b = a.select {|z| z % x.lcm(y) == 0}
  	b.shift
  	  	
  	c = a.select {|z| z % x == 0}
  	c.shift
  	c = c-b
  	
  	d = a.select {|z| z % y == 0}
  	d.shift
  	d = d-b
  	d = d-c
  	
	t << b << c << d
  end
  
  def self.soma(z)
  	z.sum
  end
  
  def self.combinar(numeros, letras)
  	numeros.product(letras)
  end
  
end


# 2 
class ArrayUtils
  def self.compara(lista1, lista2)
    lista2.sort == lista1.sort
  end

  def self.divisiveis(divisor1, divisor2)
    arrAmbos = []
    arrDivisor1 = []
    arrDivisor2= []    
    arrResult = []    
    for i in 0..50 
      arrAmbos << i if (i > 0 ) && (i % divisor1  == 0) &&  (i % divisor2  == 0)     
      arrDivisor1 << i  if (i > 0 ) && (i % divisor1  == 0) &&  (i % divisor2  != 0) 
      arrDivisor2 << i if (i > 0 ) && (i % divisor2  == 0) &&  (i % divisor1 != 0) 
    end  
    arrResult << arrAmbos << arrDivisor1 << arrDivisor2
  end    
  
  def self.soma(list)
    list.sum   
  end 
  
  def self.combinar(combine1, combine2)   
      arrResult = []
      for i in 0..combine1.length - 1       
        for x in 0..combine2.length - 1
          arrTemp = []
          arrTemp << combine1[i] << combine2[x]
          arrResult << arrTemp
        end
       
      end
      arrResult
    end          
end


# 3
class ArrayUtils
  def self.compara(lista1, lista2) #compara 2 listas e retorna true/false
    lista1-lista2 == [] && lista1.size == lista2.size
  end

  def self.divisiveis(num1,num2)
    a = (1..50).map {|e| e if e%num1 == 0 }.compact
    b = (1..50).map {|e| e if e%num2 == 0 }.compact
    [a&b,a-(a&b),b - (a&b)]
  end 

  def self.soma(array)
    array.sum
  end

  def self.combinar(lista1,lista2)
    lista1.product(lista2)
  end

end


# 4 
class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(valor1,valor2)
    div1 = (1..50).filter{|num| (num % valor1).zero?}
    div2 = (1..50).filter{|num| (num % valor2).zero?}
    [] << (div1 & div2) << (div1 - div2) << (div2 - div1)
  end

  def self.soma(array)
    array.sum
  end

  def self.combinar(array1, array2)
    array1.product array2
  end
end