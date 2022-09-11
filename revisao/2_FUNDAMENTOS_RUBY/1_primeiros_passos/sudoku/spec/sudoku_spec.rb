require 'spec_helper'

describe 'Sudoku' do
  it 'Verifica se array possui todos números de 1 a 9' do
    list = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    expect(Sudoku.new.check(list)).to eq true
  end

  it 'Verifica se array possui todos números de 1 a 9' do
    list = [1, 2, 3, 4, 5]

    expect(Sudoku.new.check(list)).to eq false
  end

  it 'Verifica se array possui todos números de 1 a 9' do
    list = [3, 5, 2, 6, 1, 7, 9, 8, 4]

    expect(Sudoku.new.check(list)).to eq true
  end

  it 'Verifica se array possui todos números de 1 a 9' do
    list = [3, 5, 2, 6, 1, 7, 9, 1, 4, 8]

    expect(Sudoku.new.check(list)).to eq false
  end

  it 'Verifica se array possui todos números de 1 a 9' do
    list = [4, 5, 3, 2, 6, 7, 9, 1, 8]

    expect(Sudoku.new.check(list)).to eq true
  end

  it 'Verifica se array possui todos números de 1 a 9' do
    list = [1, 2, 3, 4, 5, 1, 1, 2, 3]

    expect(Sudoku.new.check(list)).to eq false
  end

  it 'Verifica se array possui todos números de 1 a 9' do
    list = [2, 3, 4, 5, 6, 7, 8, 6, 4]

    expect(Sudoku.new.check(list)).to eq false
  end
end
