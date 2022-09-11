require 'spec_helper'

describe ElementSwap do
  it 'Troca posição de elementos' do
    letters = ['A', 'C']
    instructions = <<~INSTRUCTIONS
    0<>1
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq ['C', 'A']
  end

  it 'Troca posição de elementos' do
    letters = ['K', 'V', 'H', 'C']
    instructions = <<~INSTRUCTIONS
    2<>3
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq ['K', 'V', 'C', 'H']
  end

  it 'Troca posição de elementos' do
    letters = ['Y', 'Q', 'S', 'R', 'O']
    instructions = <<~INSTRUCTIONS
    1<>4
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq ['Y', 'O', 'S', 'R', 'Q']
  end

  it 'Troca posição de elementos' do
    letters = ['C', 'K', 'M', 'E', 'V', 'G']
    instructions = <<~INSTRUCTIONS
    2<>3
    4<>0
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq ['V', 'K', 'E', 'M', 'C', 'G']
  end

  it 'Troca posição de elementos' do
    letters = ['C', 'D', 'Q', 'N', 'P', 'G', 'E']
    instructions = <<~INSTRUCTIONS
    1<>5
    3<>2
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq ['C', 'G', 'N', 'Q', 'P', 'D', 'E']
  end

  it 'Troca posição de elementos' do
    letters = ['J', 'X', 'P', 'I', 'Q', 'G', 'E', 'N',
               'W', 'H', 'C', 'T', 'F', 'D', 'L', 'V']
    instructions = <<~INSTRUCTIONS
    1<>5
    3<>2
    0<>8
    2<>4
    4<>1
    4<>9
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq ['W', 'I', 'Q', 'P', 'H', 'X', 'E', 'N',
                          'J', 'G', 'C', 'T', 'F', 'D', 'L', 'V']
  end
end
