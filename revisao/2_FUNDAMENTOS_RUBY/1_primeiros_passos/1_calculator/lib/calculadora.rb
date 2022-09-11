def soma(num_1, num_2)
  num_1 + num_2
end

def subtracao(num_1, num_2)
  num_1 - num_2
end

def multiplicacao(num_1, num_2)
  num_1 * num_2
end

def divisao(num_1, num_2)
  return 'Opa! Zero como divisor' if num_2 == 0
  num_1 / num_2
end
