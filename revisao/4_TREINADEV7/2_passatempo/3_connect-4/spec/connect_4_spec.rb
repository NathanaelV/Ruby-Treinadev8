require 'spec_helper'

describe Connect4 do
  context '#play' do
    it 'Encontra quem venceu partida' do
      actions = <<~ACTIONS
        X->1
        O->2
        X->1
        O->4
        X->1
        O->8
        X->1
      ACTIONS

      result = Connect4.new.play(actions)

      expect(result).to eq 'Venceu X na rodada 7, na coluna 1'
    end

    it 'Encontra quem venceu partida' do
      actions = <<~ACTIONS
        O->6
        X->6
        O->3
        X->7
        O->5
        X->3
        O->4
        X->1
        O->8
      ACTIONS

      result = Connect4.new.play(actions)

      expect(result).to eq 'Venceu O na rodada 7, na linha 8'
    end

    it 'Encontra quem venceu partida' do
      actions = <<~ACTIONS
        O->1
        X->1
        O->1
        X->2
        O->1
        X->3
        O->1
        X->4
        O->2
        X->5
        O->1
      ACTIONS

      result = Connect4.new.play(actions)

      expect(result).to eq 'Venceu X na rodada 10, na linha 8'
    end

    it 'Encontra quem venceu partida' do
      actions = <<~ACTIONS
        O->1
        X->1
        O->2
        X->2
        O->4
        X->3
        O->3
        X->5
        O->5
        X->2
        O->1
        X->5
        O->3
        X->5
        O->1
        X->5
        O->7
        X->7
        O->8
        X->5
        O->3
        X->2
      ACTIONS

      result = Connect4.new.play(actions)

      expect(result).to eq 'Venceu X na rodada 20, na coluna 5'
    end

    it 'Encontra quem venceu partida' do
      actions = <<~ACTIONS
        O->3
        X->2
        O->7
        X->5
        O->3
        X->1
        O->4
        X->5
        O->2
        X->2
        O->1
        X->8
        O->8
        X->6
        O->3
        X->4
        O->2
        X->1
        O->4
        X->6
        O->8
        X->7
        O->6
        X->1
        O->2
        X->3
        O->7
        X->6
        O->5
        X->4
      ACTIONS

      result = Connect4.new.play(actions)

      expect(result).to eq 'Venceu X na rodada 22, na linha 7'
    end
  end
end
