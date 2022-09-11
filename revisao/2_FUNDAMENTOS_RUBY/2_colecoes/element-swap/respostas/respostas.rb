# Minha Primeira
class ElementSwap
  def switch(letters, instructions)
    arr = instructions.strip.split
    all = []
      
    arr.each do |m|
        array = m.split('<>')
        all << array
    end
    
    for z in all do 
        a = z[0].to_i
        b = z[1].to_i
        letters[a], letters[b] = letters[b], letters[a]
    end
    
    letters
  end
end


# 1
class ElementSwap
  def switch(letters, instructions)
    instructions = instructions.tr("<>\n", "").split("")
    instructions.each_with_index do |value, index| 
      letters[value.to_i], letters[instructions[index +1].to_i] = letters[instructions[index +1].to_i], letters[value.to_i] if index.even?
    end
    letters
  end
end


# 2
class ElementSwap
  def switch(letters, instructions)
    instructions.split("\n").map {|i| i.split("<>").map(&:to_i)}
    .each{|e| letters[e[0]], letters[e[1]] = letters[e[1]], letters[e[0]]}    
    letters
  end
end


# 3 
class ElementSwap
  def switch(letters, instructions)
  instructions.split(/\n/).each { |instruction|
    letters[instruction.split('<>').first.to_i],
    letters[instruction.split('<>').last.to_i] =
      letters[instruction.split('<>').last.to_i],
      letters[instruction.split('<>').first.to_i]
}
  letters
  end
end


# 4
class ElementSwap
  def switch(letters, instructions)
    instructions.split("\n").each do |indices|
      indice1 , indice2 = indices.split("<>")[0].to_i , indices.split("<>")[1].to_i
      letters[indice1] , letters[indice2] = letters[indice2] , letters[indice1]
    end

  letters
  end
end


# 5
class ElementSwap
  def switch(letters, instructions)
    index = instructions.delete("\n").delete("<>").chars.each_slice(2).to_a

    index.each {|i| letters[i[0].to_i], letters[i[1].to_i] = letters[i[1].to_i], letters[i[0].to_i] }
    letters
  end
end