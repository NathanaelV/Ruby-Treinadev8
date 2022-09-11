require 'spec_helper'

describe 'Substring' do
  it 'Recebe string e letras alvo, retorna menor substring que contém as letras' do
    string = 'gehaonuz'
    target = 'auo'

    expect(Substring.new.find(string, target)).to eq 'aonu'
  end

  it 'Recebe string e letras alvo, retorna menor substring que contém as letras' do
    string = 'nbdhagouawhrogerhi'
    target = 'agw'

    expect(Substring.new.find(string, target)).to eq 'gouaw'
  end

  it 'Recebe string e letras alvo, retorna menor substring que contém as letras' do
    string = 'qwaertyuiopsahjkldfg'
    target = 'atui'

    expect(Substring.new.find(string, target)).to eq 'aertyui'
  end

  it 'Recebe string e letras alvo, retorna menor substring que contém as letras' do
    string = 'qwtrmbnsglkhjfbpnuywrqtkjlhdpnmbdzxcvboiwertk'
    target = 'gmpd'

    expect(Substring.new.find(string, target)).to eq 'glkhjfbpnuywrqtkjlhdpnm'
  end

  it 'Recebe string e letras alvo, retorna menor substring que contém as letras' do
    string = 'bwwavbfeaejhgludiygrtghjwajhbmavbsdgbkasjpdgha'
    target = 'gmpd'

    expect(Substring.new.find(string, target)).to eq 'mavbsdgbkasjp'
  end

  it 'Recebe string e letras alvo, retorna menor substring que contém as letras' do
    string = 'cvbuiopethjklerbnmsdupiocbljkrtwebnmsfgdhjkvcbxuioprtwehljkbnm'
    target = 'sdfiop'

    expect(Substring.new.find(string, target)).to eq 'sfgdhjkvcbxuiop'
  end

  it 'Recebe string e letras alvo, retorna menor substring que contém as letras' do
    string = 'sgreagiwjntglrjkgsoihgawrhkjdafwuihviarhgldopauioegfhwluapwhgb'
    target = 'sdfiop'

    expect(Substring.new.find(string, target)).to eq 'soihgawrhkjdafwuihviarhgldop'
  end
end
