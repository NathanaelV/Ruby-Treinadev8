# 1
class JogoDaVelha
  def play(actions)
    vict_X = vict_O = 0
    win = [["0,0", "0,1", "0,2"],["1,0", "1,1", "1,2"],["2,0", "2,1", "2,2"],
    ["0,0","1,0","2,0"],["0,1","1,1","2,1"],["0,2","1,2","2,2"],
    ["0,0","1,1","2,2"],["0,2","1,1","2,0"]]

    plays_X = Array.new << (actions.split("\n").map{|i| i.split("->")}.map{|i| i[1] if i[0] == "X"}).compact
    plays_O = Array.new << (actions.split("\n").map{|i| i.split("->")}.map{|i| i[1] if i[0] == "O"}).compact
    plays_X = (plays_X[0].flatten).each_slice(3).map{|i| i.sort}.to_a
    plays_O = (plays_O[0].flatten).each_slice(3).map{|i| i.sort}.to_a

    plays_X.each {|i| vict_X+=1 if (i == win[0] || i == win[1] || i == win[2] || i == win[3]|| i == win[4]|| i == win[5]|| i == win[6]|| i == win[7])}
    plays_O.each {|i| vict_O+=1 if (i == win[0] || i == win[1] || i == win[2] || i == win[3]|| i == win[4]|| i == win[5]|| i == win[6]|| i == win[7])}
     
    if vict_X > vict_O
        "X venceu com #{vict_X} vitórias"
    elsif vict_O > vict_X
        "O venceu com #{vict_O} vitórias"
    else
        "Empate"
    end
  end
end


# 2 
class JogoDaVelha
  attr_reader :vx, :vo, :matriz
  def play(actions)
    @vx = 0
    @vo = 0
    @matriz = Array.new (3) {Array.new (3){'n'}}
    turnos = actions.split(/\n/)
    turnos.each do |jogada|
      a = jogada.gsub('->',',').split(',') 
      if a[0] == 'X'
        l,c= a[1].to_i,a[2].to_i
        matriz[l][c] = 'X'
      else
        l,c= a[1].to_i,a[2].to_i
        matriz[l][c] = 'O'
      end 
      analisa(matriz)
    end
    if vx == vo
      'Empate'
    elsif vx > vo
      "X venceu com #{vx} vitórias"
    else
      "O venceu com #{vo} vitórias"
    end
  end

  def analisa(matriz)
    l1 = matriz[0]
    l2 = matriz[1]
    l3 = matriz[2]
    c1 = matriz[0][0],matriz[1][0],matriz[2][0]
    c2 = matriz[0][1],matriz[1][1],matriz[2][1]
    c3 = matriz[0][2],matriz[1][2],matriz[2][2]
    d1 = matriz[0][0],matriz[1][1],matriz[2][2]
    d2 = matriz[2][0],matriz[1][1],matriz[0][2]
    possibilidades = l1,l2,l3,c1,c2,c3,d1,d2
    possibilidades.each do |lados|
      if lados.join.include?("OOO")
        @vo+=1
        @matriz = Array.new (3) {Array.new (3){'n'}}
      elsif lados.join.include?("XXX")
        @vx+=1
        @matriz = Array.new (3) {Array.new (3){'n'}}
      end
    end
  end
end

# 3
class JogoDaVelha

  def play(actions)
    vitoriaO = 0
    vitoriaX = 0
    table = []
    actions.each_line do |i| 
      a = i[-4] + i[-3] + i[-2]
      table[calcula_posicao(a)] = i[0]
      if table.values_at(0,1,2).count(i[0]) == 3 || table.values_at(3,4,5).count(i[0]) == 3 || table.values_at(6,7,8).count(i[0]) == 3
        table = []
        if i[0] == 'X'
          vitoriaX+=1
        else
          vitoriaO+=1
        end
      elsif table.values_at(0,3,6).count(i[0]) == 3 || table.values_at(1,4,7).count(i[0]) == 3 || table.values_at(2,5,8).count(i[0]) == 3
        table = []
        if i[0] == 'X'
          vitoriaX+=1
        else
          vitoriaO+=1
        end
      elsif table.values_at(0,4,8).count(i[0]) == 3 || table.values_at(2,4,6).count(i[0]) == 3
        table = []
        if i[0] == 'X'
          vitoriaX+=1
        else
          vitoriaO+=1
        end
      elsif table.count('XO') == 9
        table = []
      end
    end
    if vitoriaO == vitoriaX
      return 'Empate'
    end
    if vitoriaO > vitoriaX
      return "O venceu com #{vitoriaO} vitórias"
    end
    if vitoriaX > vitoriaO
      return "X venceu com #{vitoriaX} vitórias"
    end
  end

  def calcula_posicao(a)
    if a[0] == '0'
      return a[0].to_i+ a[2].to_i
    elsif a[0] == '1'
      return a[0].to_i+ a[2].to_i + 2
    elsif a[0] == '2'
      return a[0].to_i+ a[2].to_i + 4
    else 
      return nil
    end
  end
end


# 4
class JogoDaVelha
  def checker(jogo, player)
    horizontal_combination = String.new
    vertical_combination = String.new
    
    jogo.each do |linha|
      linha.each do |coluna|
        horizontal_combination += coluna
      return [player, "reset"] if horizontal_combination == "XXX" or horizontal_combination == "OOO"
      end
    end
  
    (0..jogo.size - 1).each do |index|
      vertical_combination = jogo[index][0] + jogo[index][1] + jogo[index][2]
      return [player, "reset"] if vertical_combination == "XXX" or vertical_combination == "OOO"
    end
  
      return ['','']
  end	

  def play(actions)
    contador_jogadas = 0
    tabuleiro = Array.new(3) {Array.new(3, '')}

    score_table = {
      "X": 0,
      "O": 0,
      "Empate": 0
    }

    actions.split("\n").each do |jogada|
      jogador = jogada.split("->")[0]
      linha = jogada.split("->")[1][0].to_i
      coluna = jogada.split("->")[1][2].to_i
	
      tabuleiro[linha][coluna] = jogador

      if checker(tabuleiro, jogador)[1] == "reset"
        contador_jogadas = 0
        score_table[jogador.to_sym] += 1
        tabuleiro = Array.new(3) {Array.new(3, '')}
      else
          contador_jogadas += 1
        if contador_jogadas == 9
          score_table["Empate".to_sym] += 1
          contador_jogadas = 0
          tabuleiro = Array.new(3) {Array.new(3, '')}
        end
      end
    end

    if score_table.key(score_table.values.max).to_s == "Empate" || score_table["X".to_sym] == score_table["O".to_sym] && score_table["Empate".to_sym] <= score_table["X".to_sym] 
      p "Empate"
    else
      p "#{score_table.key(score_table.values.max).to_s} venceu com #{score_table.values.max} vitórias"
    end
  end
end


# 5
class JogoDaVelha   
  def play(actions)
    moveX=[]
    moveO=[]
    winX=0
    winO=0
    resulX=[]
    resulO=[]
    won_horiz1=["0,0", "1,0", "2,0"]
    won_horiz2=["0,1", "1,1", "2,1"]
    won_horiz3=["0,2", "1,2", "2,2"]
    won_vert1=["0,0", "0,1", "0,2"]
    won_vert2=["1,0", "1,1", "1,2"]
    won_vert3=["2,0", "2,1", "2,2"]
    won_diag1=["0,0", "1,1", "2,2"]
    won_diag2=["0,2", "1,1", "2,0"]

    new_actions = actions.split("\n")      
    if new_actions.count.odd?
      new_actions.map{ |value| 
        new_value = value.split("->")
        
        if new_value[0] == "X"
          moveX << new_value[1]
          if moveX.count == 3
            case moveX.sort
            when won_horiz1
              winX+=1
              moveX.clear
            when won_horiz2
              winX+=1
              moveX.clear
            when won_horiz3
              winX+=1
              moveX.clear
            when won_vert1
              winX+=1
              moveX.clear
            when won_vert2
              winX+=1
              moveX.clear
            when won_vert3
              winX+=1
              moveX.clear
            when won_diag1
              winX+=1
              moveX.clear
            when won_diag2
              winX+=1
              moveX.clear
            end
          end
        else 
          moveO << new_value[1]
          if moveO.count == 3
            case moveO.sort
            when won_horiz1
              winO+=1
              moveO.clear
            when won_horiz2
              winO+=1
              moveO.clear
            when won_horiz3
              winO+=1
              moveO.clear
            when won_vert1
              winO+=1
              moveO.clear
            when won_vert2
              winO+=1
              moveO.clear
            when won_vert3
              winO+=1
              moveO.clear
            when won_diag1
              winO+=1
              moveO.clear
            when won_diag2
              winO+=1
              moveO.clear
            end
          end
        end
      }   
    end 
    textfinal = "Empate" if winO == winX
    textfinal = "O venceu com #{winO} vitórias" if winO > winX
    textfinal = "X venceu com #{winX} vitórias" if winO < winX
    textfinal
    
  end
end


# 6
class JogoDaVelha
  
  def play(actions)
    play_a = Array.new(3, 0)
    play_b = Array.new(3, 0)
    
    plays =  actions.split("\n")
    victories_a = 0
    victories_b = 0
    number_of_moves = 0
    plays.each do |jogada|
      move = jogada.rpartition("->")
      position = move.last.rpartition(",")
      number_of_moves +=1
      if move.first == "X"
        c = play_a[position.first.to_i]
        soma_play_a = c.to_i + 1
        play_a[position.first.to_i] = soma_play_a
      else  
          f = play_b[position.first.to_i]
          soma_play_b = f.to_i + 1
          play_b[position.first.to_i] = soma_play_b
      end
      if number_of_moves == 9
        number_of_moves = 0
        break
      end
      play_a.each do |victory_a|
        if victory_a == 3
          victories_a += 1
          play_a = [0]
          play_b = [0]
          number_of_moves = 0
          break
        end
      end
      play_b.each do |victory_b|
        if victory_b == 3
          victories_b += 1
          play_b = [0]
          play_a = [0]
          number_of_moves = 0
          break
        end
      end
    end
    if victories_a > victories_b
      message = "X venceu com #{victories_a} vitórias"
    else
      if victories_b > victories_a
        message = "O venceu com #{victories_b} vitórias"
      else
        message = "Empate"
      end
    end
  end
end



# 
class JogoDaVelha

  def initialize
    @game = [
      ["n", "n", "n"],
      ["n", "n", "n"],
      ["n", "n", "n"]
    ]
    @in_game = []
    @plays = []
    @victories = {X: 0, O: 0}
  end

  def play(actions)
    reset()

    actions.split("\n").each() { |round|
      player, plays = round.split("->")
      plays = plays.split(",").map() { |play| play.to_i }
      @in_game[plays[0]][plays[1]] = player

      puts "\"#{player}\" #{plays}"

      @in_game.each_with_index { |item, line|
        # Horizontal
        if (item.map { |str| str == player }.count(true) == item.length)
          @round_complete = true
          @victories[player.to_sym] += 1
          print "HORIZONTAL | "
        end

        # Vertical
        (0..item.length-1).map() { |i|
          count = 0
          (0..item.length-1).map() { |j|
            count += 1 if (@in_game[j][i] == player)
          }
          if (count == item.length)
            @round_complete = true
            @victories[player.to_sym] += 1
            print "VERTICAL | "
          end
        }

        # Diagonal
        if (((0..item.length-1).map() { |column| @in_game[column][column] == player }.count(true) == item.length) ||
            ((0..item.length-1).map() { |column| @in_game[column][item.length-column-1] == player }.count(true) == item.length) )
          @round_complete = true
          @victories[player.to_sym] += 1
          print "DIAGONAL | "
        end

        reset() if (@round_complete)
        print "\n#{line} #{item} | Vic: #{@victories} | "
      }

    }
    result = @victories.values[0] > @victories.values[1]
    puts "X>O? #{result}"
    return "Empate" if (@victories.values[0] == @victories.values[1])
    return "#{@victories.keys[0]} venceu com #{@victories.values[0]} vitórias" if (result)
    return "#{@victories.keys[-1]} venceu com #{@victories.values[-1]} vitórias" if !(result)
  end

  def reset()
    @in_game.clear
    @game.each { |n| @in_game << n.dup }
    @round_complete = false
    print "RESET | "
  end
end


# 
class JogoDaVelha
  def play(actions)
    combinacoes = [[[0,0],[0,1],[0,2]],[[1,0],[1,1],[1,2]],[[2,0],[2,1],[2,2]],[[0,0],[1,0],[2,0]],[[0,1],[1,1],[2,1]],[[0,2],[1,2],[2,2]],[[0,0],[1,1],[2,2]],[[0,2],[1,1],[2,0]]]
    elementos_o = []; elementos_x = []; 
    vitorias_x = 0; vitorias_o = 0

    actions.each_line do |line|
      linha = line.chomp.match /(?<letra>\w)[-][>](?<row>\d)[,](?<col>\d)/
      
      if linha[:letra] == "O"
        elementos_o << [linha[:row].to_i, linha[:col].to_i]
      else
        elementos_x << [linha[:row].to_i, linha[:col].to_i]
      end

      combinacoes.each do |vit|
        cont_x = 0; cont_o = 0

        vit.each do |v| 
          if elementos_o.include? v
            cont_o += 1 
          elsif elementos_x.include? v
            cont_x += 1
          end
        end

        if cont_x == 3
          vitorias_x += 1
          reset(vitorias_x, elementos_x, elementos_o)
        elsif cont_o == 3
          vitorias_o += 1
          reset(vitorias_o, elementos_x, elementos_o)
        end
      end
    end

    if vitorias_o > vitorias_x
      "O venceu com #{vitorias_o} vitórias"
    elsif vitorias_x > vitorias_o
      "X venceu com #{vitorias_x} vitórias"
    else
      "Empate"
    end
  end

  def reset(cont, elementos_x, elementos_o)
    cont += 1
    elementos_o.clear
    elementos_x.clear
  end
end