require 'spec_helper'

describe Numbers do
  it 'Recebe uma série de números e retorna seus valores somados' do
    numbers_text = <<~NUMBERS
      +7
      -3
      +10
      -0
    NUMBERS
    expect(Numbers.new.sum_text(numbers_text)).to eq(14)
  end

  it 'Recebe uma série de números e retorna seus valores somados' do
    numbers_text = <<~NUMBERS
      -3
      -10
      -7
      +5
    NUMBERS
    expect(Numbers.new.sum_text(numbers_text)).to eq(-15)
  end

  it 'Recebe uma série de números e retorna seus valores somados' do
    numbers_text = <<~NUMBERS
      -10
      -3
      +5
      +10
      -0
    NUMBERS
    expect(Numbers.new.sum_text(numbers_text)).to eq(2)
  end

  it 'Recebe uma série de números e retorna seus valores somados' do
    numbers_text = <<~NUMBERS
      +7
      -5
      -3
      +10
      +0
    NUMBERS
    expect(Numbers.new.sum_text(numbers_text)).to eq(9)
  end

  it 'Recebe uma série de números e retorna seus valores somados' do
    numbers_text = <<~NUMBERS
      -7
      +5
      -3
      -6
      +10
      +2
    NUMBERS
    expect(Numbers.new.sum_text(numbers_text)).to eq(1)
  end

  it 'Recebe uma série de números e retorna seus valores somados' do
    numbers_text = <<~NUMBERS
      -0
      +3
      +12
      -10
      +0
      -100
      +10
      -20
      +0
      -10
      -100
      +100
      -100
      +10
    NUMBERS
    expect(Numbers.new.sum_text(numbers_text)).to eq(-205)
  end
end
