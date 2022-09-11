# 1
class ArrayUtils
  def self.multiplos(qtd, multiplo)
    Array.new(qtd) { |item| (item + 1) * multiplo }
  end

  def self.tabuada(qtd)
    Array.new(qtd) { |item| multiplos(10, item + 1) }
  end
end


# 2
class ArrayUtils
  def self.multiplos(qtd, multiplo)
    (1 .. qtd).map { |number| number * multiplo}
  end

  def self.tabuada(qtd)
    (1 .. qtd).to_a.map { |qtd_number| (1..10).to_a.map { |table_number| 
        table_number * qtd_number
      }
    } 
  end
end



# 3
class ArrayUtils
  def self.multiplos(qtd, multiplo)
    Array.new(qtd) { |i| multiplo * (i + 1) }
  end

  def self.tabuada(valor)
    Array.new(valor) do |i|
      Array.new(10) { |j| (i + 1) * (j + 1) }
    end
  end
end


# 4
class ArrayUtils
  
  def self.multiplos(qtd_elements, multiple)
    (1..multiple * qtd_elements).find_all {|element| element.modulo(multiple) == 0 }
  end

  def self.tabuada(multiple)
    list_multiplication_tables = [];

    (1..multiple).each {|first_element |
        multiplication_tables = []
        (1..10).each {|second_element |
          multiplication_tables << first_element * second_element
        }
        
        list_multiplication_tables << multiplication_tables
    } 
     list_multiplication_tables
  end
end


