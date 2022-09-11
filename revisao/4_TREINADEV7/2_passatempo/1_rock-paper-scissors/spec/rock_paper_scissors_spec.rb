require 'spec_helper'

describe RockPaperScissors do
  context '#play' do
    it 'Conta número de vitórias do jogador A' do
      actions = <<~ACTIONS
      pedra vs tesoura
      ACTIONS

      result = RockPaperScissors.new.play(actions)

      expect(result).to eq 'Jogador A: 1'
    end

    it 'Conta número de vitórias do jogador B' do
      actions = <<~ACTIONS
      papel vs tesoura
      ACTIONS

      result = RockPaperScissors.new.play(actions)

      expect(result).to eq 'Jogador B: 1'
    end

    it 'Conta número de vitórias de A e de B no jogo' do
      actions = <<~ACTIONS
      pedra vs tesoura
      papel vs tesoura
      tesoura vs papel
      papel vs pedra
      pedra vs papel
      ACTIONS

      result = RockPaperScissors.new.play(actions)

      expect(result).to eq 'Jogador A: 3 | Jogador B: 2'
    end

    it 'Conta número de vitórias e empates no jogo' do
      actions = <<~ACTIONS
      pedra vs tesoura
      papel vs tesoura
      tesoura vs papel
      papel vs pedra
      pedra vs papel
      pedra vs pedra
      papel vs papel
      ACTIONS

      result = RockPaperScissors.new.play(actions)

      expect(result).to eq 'Empates: 2 | Jogador A: 3 | Jogador B: 2'
    end

    it 'Conta número de vitórias e empates no jogo' do
      actions = <<~ACTIONS
      tesoura vs tesoura
      papel vs pedra
      papel vs papel
      pedra vs tesoura
      pedra vs papel
      tesoura vs pedra
      pedra vs tesoura
      papel vs tesoura
      tesoura vs papel
      papel vs pedra
      pedra vs papel
      pedra vs pedra
      papel vs papel
      ACTIONS

      result = RockPaperScissors.new.play(actions)

      expect(result).to eq 'Empates: 4 | Jogador A: 5 | Jogador B: 4'
    end

    it 'Conta número de vitórias e empates no jogo' do
      actions = <<~ACTIONS
      tesoura vs tesoura
      papel vs pedra
      papel vs papel
      pedra vs tesoura
      pedra vs papel
      tesoura vs pedra
      pedra vs tesoura
      papel vs tesoura
      tesoura vs papel
      papel vs pedra
      pedra vs papel
      pedra vs pedra
      papel vs papel
      papel vs papel
      papel vs pedra
      pedra vs papel
      tesoura vs pedra
      pedra vs pedra
      papel vs pedra
      pedra vs tesoura
      papel vs tesoura
      tesoura vs papel
      tesoura vs pedra
      pedra vs pedra
      tesoura vs papel
      papel vs pedra
      papel vs papel
      tesoura vs pedra
      pedra vs tesoura
      papel vs tesoura
      papel vs papel
      pedra vs tesoura
      papel vs tesoura
      papel vs papel
      papel vs pedra
      pedra vs papel
      tesoura vs pedra
      pedra vs pedra
      pedra vs papel
      papel vs pedra
      tesoura vs papel
      papel vs pedra
      tesoura vs papel
      pedra vs papel
      pedra vs pedra
      papel vs pedra
      pedra vs pedra
      papel vs papel
      pedra vs pedra
      papel vs papel
      papel vs pedra
      pedra vs papel
      tesoura vs pedra
      pedra vs pedra
      papel vs pedra
      pedra vs tesoura
      papel vs tesoura
      tesoura vs papel
      tesoura vs pedra
      pedra vs pedra
      ACTIONS

      result = RockPaperScissors.new.play(actions)

      expect(result).to eq 'Empates: 18 | Jogador A: 23 | Jogador B: 19'
    end
  end
end
