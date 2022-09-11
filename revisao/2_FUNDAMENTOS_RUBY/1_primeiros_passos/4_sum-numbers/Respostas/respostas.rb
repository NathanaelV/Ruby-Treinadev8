# 1
class Numbers
  def sum_text(numbers_text)
   
  numbers_text.split().map(&:to_i).inject(:+)

  end
end


# 2
class Numbers
  def sum_text(numbers_text)
    numbers_text.each_line.map(&:to_i).sum
  end
end


#3
class Numbers
  def sum_text(numbers_text)
    soma=0
    numbers_text.split(/\n/).map { |number| number.to_i }.map { |number| soma+=number}
    soma
  end
end


# 4
class Numbers
  def sum_text(numbers_text)
    numbers_text = numbers_text.split("\n")
    numbers_text.map(&:to_i).reduce(0, :+) { |soma, numero| soma + numero.to_i }
  end
end
