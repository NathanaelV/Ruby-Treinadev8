class Arrays
  def self.converte_impares_por(lista, numero)
    impar = lista.select { |n_list| n_list.odd? }
    multiplo = impar.map {|i| numero*i}

    [impar, multiplo] 
  end


  def self.converte_pares_por(lista, numero)
    par = lista.select { |n_list| n_list.even?}
    multiplo = par.map {|par| numero*par}

    [par, multiplo] 
  end
end