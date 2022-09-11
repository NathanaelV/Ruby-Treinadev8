require 'spec_helper'

describe Word do

  describe 'Conta quantidade de vogais na string' do

    it "Frase 01: Ada Lovelace criou o primeiro algoritmo para ser interpretado por máquinas." do
      phrase = "Ada Lovelace criou o primeiro algoritmo para ser interpretado por máquinas."

      expect(Word.new.vowels_count(phrase)).to eq 31
    end

    it "Frase 02: Irmã Mary Kenneth Keller viu os computadores como uma ferramenta educacional e criou a linguagem Basic." do
      phrase = "Irmã Mary Kenneth Keller viu os computadores como uma ferramenta educacional e criou a linguagem Basic."

      expect(Word.new.vowels_count(phrase)).to eq 41
    end
  end

  describe 'Conta quantidade de consoantes na string' do
    it "Frase 01: Além de ser uma das criadoras do Cobol, Grace Hopper cunhou o termo bug." do
      phrase = "Além de ser uma das criadoras do Cobol, Grace Hopper cunhou o termo bug."

      expect(Word.new.consonants_count(phrase)).to eq 32
    end

    it "Frase 02: O conceito de busca de conteúdo usado pelo Google foi criado por Karen Sparck Jones." do
      phrase = "O conceito de busca de conteúdo usado pelo Google foi criado por Karen Sparck Jones."

      expect(Word.new.consonants_count(phrase)).to eq 37
    end
  end
end
