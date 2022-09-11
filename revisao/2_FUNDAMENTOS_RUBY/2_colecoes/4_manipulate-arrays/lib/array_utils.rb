class ArrayUtils
  def self.compara(list_1, list_2)
    list_1.sort == list_2.sort
  end

  def self.divisiveis(num_1, num_2)
    # Identifica porque não posso igualar estes arrays
    # Se igualar as respostas serão clonadas
    # O que acontece em um, acontece nos outros.
    # resp = div = div_1 = div_2 = []
    
    resp = [[],[],[]]
    Array(1..50).each do |num|
      if num % num_1 == 0 && num % num_2 == 0
        resp[0] << num 
      elsif num % num_1 == 0
        resp[1] << num
      elsif num % num_2 == 0
        resp[2] << num
      end
    end
    resp
  end

  def self.soma(list)
    list.sum
  end

  def self.combinar(numeros, letras)
    resp = []
    numeros.each do |num|
      letras.each do |letra|
        temp = []
        temp << num << letra
        resp << temp
      end
    end
    resp
  end
end