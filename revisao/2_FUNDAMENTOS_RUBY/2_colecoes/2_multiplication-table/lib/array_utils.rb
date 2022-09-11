class ArrayUtils
  def self.multiplos(multiplos, num)
    Array(1..multiplos).map { |n| n * num }
  end

  def self.tabuada(num)
    tabuada = []
    Array(1..num).each do |multiplo|
      tabuada << Array(1..10).map { |n| n * multiplo }
    end
    tabuada
  end
end
