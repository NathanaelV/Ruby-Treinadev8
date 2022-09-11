class RockPaperScissors
  def play(actions)
    @empate = 0
    @jogador_a = 0
    @jogador_b = 0

    arr = actions.split("\n")
    arr.map! do |actions|
      jogada = actions.chomp.split('vs').map! { |a| a.strip }
      pontos(jogada)
    end
    
    placar # Chama a função placar
    # Não preciso passar parâmetros, pois as variáveis valem para toda classe 
  end


  private

  def pontos(jogadas)
    if jogadas.first == jogadas.last 
      @empate += 1
    elsif jogadas.first == 'papel'
      if jogadas.last == 'pedra'
        @jogador_a += 1
      else
        @jogador_b += 1
      end
    elsif jogadas.first == 'pedra'
      if jogadas.last == 'tesoura'
        @jogador_a += 1
      else
        @jogador_b += 1
      end
    else
      if jogadas.last == 'papel'
        @jogador_a += 1
      else
        @jogador_b += 1
      end
    end
  end

  def placar
    if @jogador_a == 0
      return "Jogador B: #{@jogador_b}"
    elsif @jogador_b == 0
      return "Jogador A: #{@jogador_a}"
    elsif @empate == 0
      return "Jogador A: #{@jogador_a} | Jogador B: #{@jogador_b}"
    else 
      return "Empates: #{@empate} | Jogador A: #{@jogador_a} | Jogador B: #{@jogador_b}"
    end
  end
end