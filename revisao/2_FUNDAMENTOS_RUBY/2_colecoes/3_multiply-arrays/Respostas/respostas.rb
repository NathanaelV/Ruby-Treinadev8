# 1
class Arrays
  def self.multiplica_antecessor_predecessor(array)
    Array.new(array.size) do |i|
      array[[i - 1, 0].max] * array[[i + 1, array.size - 1].min]
    end
  end
end


# 2
class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array.map.with_index do |_ch, idx|
      pos1 = idx.zero? ? idx : idx - 1
      pos2 = idx == array.size - 1 ? idx : idx + 1
      array[pos2] * array[pos1]
    end
  end
end


# 3
class Arrays
  def self.multiplica_antecessor_predecessor(array)
    result = []
    for i in 0...array.size
      result.push((i != 0 ? array[i - 1] : array[i]) * (array[i + 1] || array[i]))
    end
    result
  end

end


# 4
class Arrays
  def self.multiplica_antecessor_predecessor(array)    
    array.map.with_index do |valor,posicao|
      if posicao == 0 
        array[posicao] * array[posicao+1] 
      elsif posicao != array.size-1
        array[posicao-1] * array[posicao+1]
      else
        array[posicao-1] * array[posicao]
      end
    end
  
  end
end


# 5
class Arrays
  def self.multiplica_antecessor_predecessor(array)
    multi_array = Array.new(array)
    multi_array.push(multi_array.at(multi_array.length-1)).delete_at(0)
    array.unshift(array[0]).delete_at(array.length-1)
    array.map.with_index {|value,index|
    value = value * multi_array.at(index) }
  end
end