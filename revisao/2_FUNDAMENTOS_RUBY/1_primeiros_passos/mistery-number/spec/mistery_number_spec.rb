require 'spec_helper'

describe MisteryNumber do
  it 'recebe string e retorna 8' do
    expect(MisteryNumber.new.calculate('10 + ? = 18')).to eq 8
  end

  it 'recebe string e retorna 5' do
    expect(MisteryNumber.new.calculate('100 + ? + 3 = 108')).to eq 5
  end

  it 'recebe string e retorna 3' do
    expect(MisteryNumber.new.calculate('100 + 5 * ? = 115')).to eq 3
  end

  it 'recebe string e retorna 2' do
    expect(MisteryNumber.new.calculate('100 / 5 * ? = 40')).to eq 2
  end

  it 'recebe string e retorna 3' do
    expect(MisteryNumber.new.calculate('? + 5 * 2 = 13')).to eq 3
  end

  it 'recebe string e retorna 500000' do
    expect(MisteryNumber.new.calculate('? + 5 * 2 = 500010')).to eq 500000
  end
end
