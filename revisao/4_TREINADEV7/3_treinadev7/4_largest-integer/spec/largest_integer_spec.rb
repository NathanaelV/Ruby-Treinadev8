require 'spec_helper'

describe LargestInteger do
  context '#find' do
    it 'Encontra maior inteiro possível na lista de números' do
      array = [[2, 4]]
      result = LargestInteger.new.find(array)

      expect(result).to eq [42]
    end

    it 'Encontra maior inteiro possível na lista de números' do
      array = [[4, 2, 3]]
      result = LargestInteger.new.find(array)

      expect(result).to eq [432]
    end

    it 'Encontra maior inteiro possível na lista de números' do
      array = [[12, 6, 65, 325]]
      result = LargestInteger.new.find(array)

      expect(result).to eq [66532512]
    end

    it 'Encontra maior inteiro possível na lista de números' do
      array = [
               [23, 621, 15, 35, 1, 3, 62],
               [62, 35, 26, 61, 63, 345, 334, 2]
              ]
      result = LargestInteger.new.find(array)

      expect(result).to eq [6262135323151, 63626135345334262]
    end

    it 'Encontra maior inteiro possível na lista de números' do
      array = [
               [23, 621, 45, 35, 2, 3, 62],
               [4, 45, 16, 162, 167, 32, 42],
               [51, 52, 626, 623, 4, 23, 261],
               [654, 262, 564, 267, 23, 32, 25]
              ]
      result = LargestInteger.new.find(array)

      expect(result).to eq [6262145353232, 454423216716216,
                            6266235251426123, 654564322672622523]
    end

    it 'Encontra maior inteiro possível na lista de números' do
      start_time = Time.now
      array = [
               [10, 7, 76, 415, 22, 52, 26, 24, 62, 66, 1],
               [21, 98, 80, 52, 2342, 725, 24, 73, 60, 129],
               [12, 10, 671, 23, 38, 34, 73, 55, 3, 98],
               [92, 81, 74, 88, 99, 54, 62, 569, 27, 67],
               [917, 134, 2, 51, 1, 63, 15, 93, 151, 10],
               [52, 267, 11, 26, 77, 84, 27, 24, 98, 3],
               [16, 136, 166, 99, 823, 74, 27, 235, 26, 7]
              ]
      result = LargestInteger.new.find(array)

      expect(result).to eq [776666252415262422110, 988073725605224234221129,
                            98736715538343231210, 999288817467625695427,
                            939176351215151134110, 98847752327267262411,
                            99823774272623516616136]
      expect((Time.now - start_time)/60).to be < 1
    end
  end
end
