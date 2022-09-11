# 1
class BinaryCounter
  def read(values_sequence)
    binaries = values_sequence.split('-').map { |number| number.to_i.to_s(2) }

    binaries.map do |binary|
      last_char = binary.chars.last
      repetitions = binary.scan(/((\d)\2*)/).map(&:first)

      last_char_repetition = repetitions.select do |repetition|
        repetition.include?(last_char)
      end
      last_char_repetition.map(&:size).max.to_s
    end.join
  end
end


# 2
class BinaryCounter
  def read(values_sequence)
    result = values_sequence.split("-").map do |currrent| 
        binary = currrent.to_i.to_s(2)
        sequence = binary.gsub(/([#{binary[binary.length - 1] == "1" ? "0" : "1"}])/, " ").split(" ")
        sequence.inject {|acc, current| current.length > acc.length ? current : acc}.length
    end
    result.map {|current| current.to_s}.inject{|res, current| res << current}
  end
end


# 3
class BinaryCounter
  def read(values_sequence)
    resultado = ''
    values = []
    values_sequence.split('-').each do |number|
      values << "%b" % number.to_i()
    end
    values.each do |value|
      i=0 
      total = 0
      while i < (value.size)
        j=0
        x = ''
        while j <= i
          x += value[-1]
          j+=1
        end
        if value.include?(x)
          total = j
        end 
        i+=1  
      end
      resultado << total.to_s
    end
    resultado
  end
end


# 4
class BinaryCounter
  def read(values_sequence)
    binary_sequence = values_sequence.split('-').map do |value|
      convert_to_binary(value.to_i)
    end

    total = calculate_total(binary_sequence).join('')
  end

  def calculate_total(binary_sequence)
    max = 0
    count = 1
	  last_char = 0

    total = binary_sequence.map do |binary_value|
      max = 0
      last_char = binary_value[-1]

      binary_value.split('').each_index do |index|      
        if binary_value[index] == last_char && (binary_value[index + 1] == binary_value[index])
          count += 1
        else
          if count > max
            max = count
          end
          count = 1
        end
      end

      max
    end
  end

  def convert_to_binary(value)
    value.to_s(2)
  end
end


# 5
class BinaryCounter
  def read(values_sequence)
    contagem = []
    binarios = values_sequence.split('-').map{|n| n.to_i.to_s(2)}

    binarios.each do |binario|

      if binario[-1] == "0"
        binario = binario.split("1")
        contagem << binario.max.size
      else
        binario = binario.split("0")
        contagem << binario.max.size
      end
  
    end
    contagem.join
  end
end


# 6
class BinaryCounter
  def read(values_sequence)
    resultado = ''
    values = []
    values_sequence.split('-').each do |number|
      values << "%b" % number.to_i()
    end
    values.each do |value|
      i=0 
      total = 0
      while i < (value.size)
        j=0
        x = ''
        while j <= i
          x += value[-1]
          j+=1
        end
        if value.include?(x)
          total = j
        end 
        i+=1  
      end
      resultado << total.to_s
    end
    resultado
  end
end


# 7 
class BinaryCounter
  def read(values_sequence)
    values_sequence = values_sequence.split('-')
    base = 2

    values_sequence.map! do |dec|
      bin = dec.to_i.to_s(base)
      index = bin[bin.size-1]

      value = nil
      (0..bin.size).to_a.reverse.each do |length|
        value = length if bin.include? index*length
        break if value
      end
      value
    end

    values_sequence.join
  end
end


# 8
class BinaryCounter
  def read(values_sequence)
    count = []
    values_sequence.split("-").map {|n| n.to_i}.map {|n| n.to_s(2)}
    .each {|e| finalNumber = e.slice(e.size - 1)
      count << e.scan(/#{finalNumber}+/).max.size
    }
    count.join
  end
end


# 9 - Verificar Retorno do Array
class BinaryCounter
  def read(values_sequence)
    result = ""
    binary_sequence = values_sequence.split("-").map {|num| num.to_i.to_s(2)}

    binary_sequence.each do |bin|
      result << get_bigger_sequence(bin)
    end

    result
  end

  def get_bigger_sequence(binary)
    result = []

    if binary.slice(-1) == "1"
      result = binary.split("0").map {|seq| seq.size}
    else
      result = binary.split("1").map {|seq| seq.size}
    end

    result.max.to_s
  end
end


# 10 
class BinaryCounter
  def read(values_sequence)
    values_sequence = values_sequence.split("-")
    counter0 = 0
    counter1 = 0
    values_sequence.map! do |value|
      counter1 = 0
      counter0 = 0
      value = value.to_i.to_s(2).scan /\w/
      
      if value[value.length()-1] == "1"
        counter1 = value.chunk { |n| n }.select { |a| a.include?("1") }.map { |y, ys| ys.count}.max
      else
        counter0 = value.chunk { |n| n }.select { |a| a.include?("0") }.map { |y, ys| ys.count}.max
      end
  
      if counter1 != 0
       value = counter1
      else
        value = counter0
     end
    end
    values_sequence.join
  end
end