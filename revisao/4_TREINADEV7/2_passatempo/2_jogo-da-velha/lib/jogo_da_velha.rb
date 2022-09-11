class JogoDaVelha
  def play(actions)
    count_h0x = count_h1x = count_h2x = vit_x = 0
    count_v0x = count_v1x = count_v2x = 0
    count_d1x = count_d2x = 0
    count_h0o = count_h1o = count_h2o = vit_o = 0
    count_v0o = count_v1o = count_v2o = 0
    count_d1o = count_d2o = 0
    round = 0

    actions = actions.split("\n")
    actions.map! { |act| act.split("->") }

    actions.each do |jogada|
      if jogada[0] == 'X'
        if jogada[1][0] == '0'
          count_h0x += 1
        elsif jogada[1][0] == '1'
          count_h1x += 1
        else 
          count_h2x += 1
        end

        if jogada[1][2] == '0'
          count_v0x += 1
        elsif jogada[1][2] == '1'
          count_v1x += 1
        else
          count_v2x += 1
        end

        if jogada[1][0] == jogada[1][2]
          count_d1x += 1
        end
        if jogada[1][0].to_i == 2 - jogada[1][2].to_i
          count_d2x += 1
        end

      else
        if jogada[1][0] == '0'
          count_h0o += 1
        elsif jogada[1][0] == '1'
          count_h1o += 1
        else 
          count_h2o += 1
        end

        if jogada[1][2] == '0'
          count_v0o += 1
        elsif jogada[1][2] == '1'
          count_v1o += 1
        else
          count_v2o += 1
        end

        if jogada[1][0] == jogada[1][2]
          count_d1o += 1
        end
        if jogada[1][0].to_i == 2 - jogada[1][2].to_i
          count_d2o += 1
        end
      end
      round += 1

      if count_h0x == 3 || count_h1x == 3 || count_h2x == 3 || count_v0x == 3 || count_v1x == 3 ||count_v2x == 3 || count_d1x == 3 || count_d2x == 3
        vit_x += 1
        count_h0x = count_h1x = count_h2x = 0
        count_v0x = count_v1x = count_v2x = 0
        count_h0o = count_h1o = count_h2o = 0
        count_v0o = count_v1o = count_v2o = 0
        count_d1x = count_d2x = 0
        count_d1o = count_d2o = 0
        round = 0
      elsif count_h0o == 3 || count_h1o == 3 || count_h2o == 3 || count_v0o == 3 || count_v1o == 3 ||count_v2o == 3 || count_d1o == 3 || count_d2o == 3
        vit_o += 1
        count_h0x = count_h1x = count_h2x = 0
        count_v0x = count_v1x = count_v2x = 0
        count_h0o = count_h1o = count_h2o = 0
        count_v0o = count_v1o = count_v2o = 0
        count_d1x = count_d2x = 0
        count_d1o = count_d2o = 0
        round = 0
      elsif round == 9
        count_h0x = count_h1x = count_h2x = 0
        count_v0x = count_v1x = count_v2x = 0
        count_h0o = count_h1o = count_h2o = 0
        count_v0o = count_v1o = count_v2o = 0
        count_d1o = count_d2o = count_d1x = count_d2x = 0
        round = 0
      end
    end
    
    
    if vit_x == vit_o
      'Empate'
    elsif vit_x > vit_o
      "X venceu com #{vit_x} vitórias"
    else
      "O venceu com #{vit_o} vitórias"
    end
  end
end
