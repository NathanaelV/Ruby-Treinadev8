require 'spec_helper'

describe PatternSplitter do
  context '#split_pattern' do
    it 'Encontra padrão na string e retorna lista' do
      string = 'GGHHAC'

      result = PatternSplitter.new.split_pattern(string)

      expect(result).to eq ['GGHHAC']
    end

    it 'Encontra padrão na string e retorna lista' do
      string = 'OPOPOPPDDD'

      result = PatternSplitter.new.split_pattern(string)

      expect(result).to eq ['OPOPOPPDDD']
    end

    it 'Encontra padrão na string e retorna lista' do
      string = 'OPOPOPPDDDPPOOPPOEED'

      result = PatternSplitter.new.split_pattern(string)

      expect(result).to eq ['OPOPOPPDDD', 'PPOOPPOEED']
    end

    it 'Encontra padrão na string e retorna lista' do
      string = 'XZXXXZXXNKNKNXZZXXXZXKKKNNXXZZXXZXKNNNK'

      result = PatternSplitter.new.split_pattern(string)

      expect(result).to eq ['XZXXXZXXNKNKN', 'XZZXXXZXKKKNN', 'XXZZXXZXKNNNK']
    end

    it 'Encontra padrão na string e retorna lista' do
      string = 'LLMMLMMLMLLMYRYRYMLLMMMLMMLMLRRRRRLLLMMMLLMLMMYYRRR'\
               'MMMLLMLMLMMMRRYRYLMMLLMMLMLLLRRYYR'

      result = PatternSplitter.new.split_pattern(string)

      expect(result).to eq ['LLMMLMMLMLLMYRYRY', 'MLLMMMLMMLMLRRRRR',
                            'LLLMMMLLMLMMYYRRR', 'MMMLLMLMLMMMRRYRY',
                            'LMMLLMMLMLLLRRYYR']
    end

    it 'Encontra padrão na string e retorna lista' do
      string = 'BBTBBTTTBBTDDEEDDETBTTTBBTBTBDDEEDEEBTBTTTTTBBBEEDEDEETTBBTBTTTBTEEEDEDE'\
               'BTBTBBBTTBTEEDEEDDTTBBTBTBTBTEDEDEDEBTBTBBBTTBBEDDEEDDTBTBTBTTBBBEEEDEDE'\
               'TTBTBTBBTBBEEDDEDDTTBBTBTTBBTDEEEEEEBBBTBBBTBBTDEDDDDDTTBBTBTBTBTDEEDEDE'\
               'BTBTBBTBTBBEEDDEEDTTTBTBTTBBTDEDDEDEBTBTBBBTTBTDEDDDDDTBTBTBTTTBBEEEDEED'\
               'BTBTBBBTTBTDEDEEDDTBBTTBTBTBTEEEDEDEBTTBBTBTTBBDEDEEDD'

      result = PatternSplitter.new.split_pattern(string)

      expect(result).to eq ['BBTBBTTTBBTDDEEDDE', 'TBTTTBBTBTBDDEEDEE', 'BTBTTTTTBBBEEDEDEE',
                            'TTBBTBTTTBTEEEDEDE', 'BTBTBBBTTBTEEDEEDD', 'TTBBTBTBTBTEDEDEDE',
                            'BTBTBBBTTBBEDDEEDD', 'TBTBTBTTBBBEEEDEDE', 'TTBTBTBBTBBEEDDEDD',
                            'TTBBTBTTBBTDEEEEEE', 'BBBTBBBTBBTDEDDDDD', 'TTBBTBTBTBTDEEDEDE',
                            'BTBTBBTBTBBEEDDEED', 'TTTBTBTTBBTDEDDEDE', 'BTBTBBBTTBTDEDDDDD',
                            'TBTBTBTTTBBEEEDEED', 'BTBTBBBTTBTDEDEEDD', 'TBBTTBTBTBTEEEDEDE',
                            'BTTBBTBTTBBDEDEEDD']
    end
  end
end

