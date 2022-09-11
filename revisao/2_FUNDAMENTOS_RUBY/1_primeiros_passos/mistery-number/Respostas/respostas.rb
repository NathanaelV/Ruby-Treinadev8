#1
class MisteryNumber
  def calculate(operation)
    equation = operation.gsub("=", "==")
    mistery_number = 0

    until eval equation.gsub("?", mistery_number.to_s)
      mistery_number += 1
    end

    mistery_number
  end
end


#2
class MisteryNumber
  def calculate(operation)
    operation = operation.split('=')
    index = 0
    while true do
      return index unless !(eval(operation[0].gsub('?', index.to_s)) == eval(operation[1]))
      index +=1
    end
  end
end


#3
class MisteryNumber
  def calculate(operation)
    total = operation.split.last
    operation = operation[0..operation.size - (operation.size - operation.index('=') + 1)].split
    operador = ''
    operador_final = ''
    operacao = ''

    operation.each do |e|
      if e.to_i > 0
        if operador == ''
          operacao += e
        else
          operacao += operador + e
          operacao = eval(operacao).to_s
        end
      elsif e != '?'
        if ['+', '-'].include?(e) && operacao != ''
          total = eval(total + '-' + operacao).to_s
          operacao = ''
        else
          operador = e unless operacao == ''
        end
      elsif e == '?'
        operador_final = if operador == '/'
                           '*'
                         elsif operador == '*'
                           '/'
                         elsif operador == '+'
                           '-'
                         elsif operador == '-'
                           '+'
                         else
                           '-'
                         end
      end
    end
    total = eval(total + operador_final + operacao) unless operacao.empty?
    total.to_i
  end
end


# 4
class MisteryNumber
  def calculate(operation)
    formula = operation.gsub('=', '==')
    
    number = simple_calculation(operation)
    return number if is_correct?(formula, number)

    number = 0
    until is_correct?(formula, number) do
      number += 1
    end
    number
  end

  private

  def is_correct?(formula, number)
    eval( formula.gsub('?', number.to_s) )
  end

  def simple_calculation(operation)
    side_a, side_b = operation.split("=")
    calc_side_a = eval( side_a.gsub('?', '0') )
    eval("#{side_b} - #{calc_side_a}")
  end
end