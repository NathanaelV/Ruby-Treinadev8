require 'spec_helper'

describe JogoDaVelha do
  context '#play' do
    it 'Encontra quem venceu mais rodadas' do
      actions = <<~ACTIONS
        X->1,1
        O->2,0
        X->1,0
        O->0,2
        X->1,2
        X->1,1
        O->2,0
        X->1,0
        O->0,2
        X->1,2
        X->1,1
        O->1,2
        X->1,0
        O->0,2
        X->2,2
        O->0,0
        X->0,1
        O->2,1
        X->2,0
      ACTIONS

      result = JogoDaVelha.new.play(actions)

      expect(result).to eq 'X venceu com 2 vitórias'
    end

    it 'Encontra um empate' do
      actions = <<~ACTIONS
        X->1,1
        O->1,2
        X->1,0
        O->0,2
        X->2,2
        O->0,0
        X->0,1
        O->2,1
        X->2,0
        X->1,1
        O->1,2
        X->1,0
        O->0,2
        X->2,2
        O->0,0
        X->0,1
        O->2,1
        X->2,0
        X->1,1
        O->1,2
        X->1,0
        O->0,2
        X->2,2
        O->0,0
        X->0,1
        O->2,1
        X->2,0
      ACTIONS

      result = JogoDaVelha.new.play(actions)

      expect(result).to eq 'Empate'
    end

    it 'Encontra quem venceu mais rodadas' do
      actions = <<~ACTIONS
        O->1,1
        X->2,0
        O->1,0
        X->0,2
        O->1,2
        X->0,2
        O->1,1
        X->2,0
        O->1,0
        X->2,1
        O->1,2
        X->1,2
        O->1,1
        X->0,2
        O->1,0
        X->0,0
        O->2,2
        X->0,1
        O->2,0
      ACTIONS

      result = JogoDaVelha.new.play(actions)

      expect(result).to eq 'O venceu com 2 vitórias'
    end

    it 'Encontra quem venceu mais rodadas' do
      actions = <<~ACTIONS
        O->1,1
        X->2,0
        O->1,0
        X->0,2
        O->1,2
        O->1,1
        X->2,0
        O->1,0
        X->0,2
        O->1,2
        O->1,1
        X->2,0
        O->1,0
        X->0,2
        O->1,2
      ACTIONS

      result = JogoDaVelha.new.play(actions)

      expect(result).to eq 'O venceu com 3 vitórias'
    end

    it 'Encontra um empate' do
      actions = <<~ACTIONS
        O->2,1
        X->2,0
        O->1,0
        X->1,1
        O->1,2
        X->0,2
        O->0,0
        X->0,2
        O->1,1
        X->0,1
        O->2,2
        X->2,0
        O->2,1
        X->1,1
        O->1,2
        X->1,0
        O->0,2
        X->2,2
        O->0,0
        X->0,1
      ACTIONS

      result = JogoDaVelha.new.play(actions)

      expect(result).to eq 'Empate'
    end
  end
end
