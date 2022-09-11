require 'spec_helper'

describe BinaryCounter do
  context '#read' do
    it 'Recebe série de números e retorna contagem dos binários' do
      result = BinaryCounter.new.read('1-0')

      expect(result).to eq '11'
    end

    it 'Recebe série de números e retorna contagem dos binários' do
      result = BinaryCounter.new.read('11-10')

      expect(result).to eq '21'
    end

    it 'Recebe série de números e retorna contagem dos binários' do
      result = BinaryCounter.new.read('2-0-11')

      expect(result).to eq '112'
    end


    it 'Recebe série de números e retorna contagem dos binários' do
      result = BinaryCounter.new.read('111-100')

      expect(result).to eq '42'
    end

    it 'Recebe série de números e retorna contagem dos binários' do
      result = BinaryCounter.new.read('200-21-135-5')

      expect(result).to eq '3131'
    end

    it 'Recebe série de números e retorna contagem dos binários' do
      result = BinaryCounter.new.read('15135-6264627-45136265-5262727-25724545')

      expect(result).to eq '56332'
    end
  end
end
