# Minha Primeira
class Chars
  def unique_quantity(text)
      word = text.split
      letter = []
      count = 0
      word.each do |w|
          w.each_char do |l|
              letter << l
          end
          count += letter.uniq.length
          letter = []
      end
      count
  end
end


# 1
class Chars
  def unique_quantity(text)
    array = text.split(' ')

    result = 0
    array.each do |group|
      result += (group.split('').uniq.join('')).length
    end
    result
  end
end

# 2
class Chars
  def unique_quantity(text)
    sequence = text.split(" ")
    sequence = sequence.map { |element| element.split('').uniq.count }
    sequence.inject(:+)
  end
end

# 3
class Chars
  def unique_quantity(text)
    
    text = text.split.map do |n|
      n.split("").sort.join.squeeze
    end

    text.join.split("").count
  end
end


# 4
class Chars
  def unique_quantity(text)
    quantity = 0
    text.split.each do |item|
      quantity += item.chars.uniq.count
    end
    quantity
  end
end


