class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array.map.with_index do |num, i|
      if i == 0
        num = array[0] * array[1]
      elsif i == array.length - 1
        num = array[-1] * array[-2]
      else
        num = array[i-1] * array[i+1]
      end
    end
  end
end
