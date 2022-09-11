class Connect4
  def play(actions)
    count_o = count_x = rodada = 0
    actions = actions.split("\n")
    actions.map! { |act| act.split("->") }
    actions.map { |act| act[1] = act[1].to_i-1 }
    tabuleiro = Array.new(8) {[]}
    

    actions.each do |act|
      tabuleiro[act[1]] << act[0]
      rodada += 1

      # Vertical
      tabuleiro.each_with_index do |coluna, i_col|
        coluna.each do |peca|
          if peca == 'X'
            count_x += 1
            count_o = 0
          elsif peca == 'O'
            count_o += 1
            count_x = 0
          end
          if count_x == 4
            p tabuleiro
            return "Venceu X na rodada #{rodada}, na coluna #{i_col + 1}"
          elsif count_o == 4
            return "Venceu O na rodada #{rodada}, na coluna #{i_col + 1}"
          end
        end
        count_o = count_x = 0
      end

      # Horizontal
      Array(0..7).each do |l|
        Array(0..7).each do |c|
          if tabuleiro[c][l] == 'X'
            count_x += 1
            count_o = 0
          elsif tabuleiro[c][l] == 'O'
            count_o += 1
            count_x = 0
          end
          unless tabuleiro[c][l]
            count_o = count_x = 0
          end
          if count_x == 4
            return "Venceu X na rodada #{rodada}, na linha #{8 - l}"
          elsif count_o == 4
            return "Venceu O na rodada #{rodada}, na linha #{8 - l}"
          end
        end
      end
    end
  end
end
