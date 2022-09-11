require 'spec_helper'

describe Finder do
  it 'Encontra a posição da string' do
    list = ['a', 's', 'z']

    expect(Finder.new.index_of(list, 'a')).to eq [0]
  end

  it 'Encontra a posição da string' do
    list = ['a', 's', 'f', 'y', 'F', 'j']

    expect(Finder.new.index_of(list, 'F')).to eq [4]
  end

  it 'Encontra a posição da string' do
    list = ['k', 'z', 't', 'c', 'z', 'y', 'x', 'xay']

    expect(Finder.new.index_of(list, 'z')).to eq [1, 4]
  end

  it 'Encontra a posição da string' do
    list = ['k', 'bac', 'a', 'a', 'zBy', 'yUk', 'A', 'u', 'a']

    expect(Finder.new.index_of(list, 'a')).to eq [1, 2, 3, 8]
  end

  it 'Encontra a posição da string' do
    list = ['k', 'abc', 'aSDCc1#54!@', '', 'c', 'kk',
            'zzy', 'y', 't', 'u', 'u', 'u',
            'a', 'zcj91', 'zbc', '@', 'l', 'p',
            'xy', 'occ', 'v', 'n20c0', 'v', '', 'v',
            'u', 'u', 'a', 't', 't', 'h', 'k',
            '!', 'bc', 'a', 'y', 't', 'j', 't', '',
            'v', 'c', '', 'x', 'f', 'e', 'd', 'a',
            'g', ',', 'z', 'CMnc', 'u', 'k', 'y', 'kay']

    expect(Finder.new.index_of(list, 'k')).to eq [0, 5, 31, 53, 55]
  end

  it 'Encontra a posição da string' do
    list = ['kav', 'abc', 'a', 'a', 'c', 'kkau',
            'b', 'y', 't', 'u', 'u', 'u',
            'aj', 'z', 'zbc', 'm', 'l', 'p',
            'xy', 'o', 'v', 'n', 'v', '', 'v',
            'u', 'u', '', 't', 't', 'h', '',
            '', 'b', 'a', 'y', 't', 'j', 't', '',
            'v', 'c', '', 'x', '', '', '', '',
            'g', 'v', 'z', 'abc', 'u', 'k', 'y', 'kay']

    expect(Finder.new.index_of(list, 'a')).to eq [0, 1, 2, 3, 5, 12, 34, 51, 55]
  end

  it 'Encontra a posição da string' do
    list = ['kav', 'abc', 'a', 'a', 'c', 'xone',
            'b', 'y', 't', 'u', 'pOcOxone', 'u',
            'aj', 'z', 'zbc', 'm', 'l', 'p',
            'xy', 'o', 'v', 'n', 'v', '', 'v',
            'u', 'u', 'xboneone', 't', 't', 'h', '',
            'uva', 'b', 'a', 'y', 't', 'j', 't', '',
            'v', 'c', 'PaIxoneI', 'xone', 'z', 'U', '', 'F',
            'g', 'v', 'z', 'abc', 'u', 'k', 'y', 'Z']

    expect(Finder.new.index_of(list, 'one')).to eq [5, 10, 27, 42, 43]
  end
end
