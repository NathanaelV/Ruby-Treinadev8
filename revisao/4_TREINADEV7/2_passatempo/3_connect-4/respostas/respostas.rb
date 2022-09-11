# 1
class Connect4

  attr_accessor :board, :board_line, :count_move, :finish, :winner

  def initialize
    @board = start_board
    @board_line = start_board
    @count_move = 0
    @finish = false
    @winner = Array.new
  end    

  def play(actions)
    playing(actions)
   
    "Venceu #{winner[0]} na rodada #{@count_move}, na #{winner[1]} #{winner[2]}"    
  end

  private

  def playing(playings)
    list_to_array(playings).each{|x| move_to_board(x[0], (x[1].to_i)) if finish.eql?(false)}        
  end

  def list_to_array(lista)
    result = []
    lista.each_line{|line| result << line.chop.split('->')}        
    result           
  end

  def move_to_board(player, column)
    line_represent = {'7': 0, '6': 1,'5': 2,'4': 3,'3': 4,'2': 5,'1': 6,'0': 7}
    convert_line = 0 #convert last index player in colum array to line array
    
    @board[column -1].push(player)

    convert_line = @board[column -1].rindex(player)
    column_line = line_represent[:"#{column -1}"]
    @board_line[line_represent[:"#{convert_line}"]][column_line] = player

    @count_move += 1
    find_in_column(player)
    find_in_line(player)
  end

  def find_in_column(player)                
    @board.size.times do |col|           
      if @board[col].join.include? sequence_player(player).join
        @finish = true
          return @winner = [player, 'coluna', col +1]
      end            
    end        
    return false
  end

  def find_in_line(player)
    line_represent = {'7': 8, '6': 7,'5': 6,'4': 5,'3': 4,'2': 3,'1': 2,'0': 1}

    @board_line.size.times do |lin|           
      if @board_line[lin].join.include? sequence_player(player).join        
         @finish = true         
         return @winner = [player, 'linha', line_represent[:"#{lin}"]]
      end 
    end 
    return false          
  end  

  def start_board
    return Array.new(8) {Array.new}
  end

  def sequence_player(player)
    return [player] * 4
  end

end


# 2
class Connect4
  def play(actions)
    array = actions.split("\n")
    tabuleiro = [[], [], [], [], [], [], [], [], []]
    indexT    = [[], [], [], [], [], [], [], [], []]
    rodada = 1
    @@final = ''
    @@rodada_final = 100
    
    array.each do |n|
      posicao = n[3].to_i
      tabuleiro[posicao] << n[0]
      indexT[posicao] << rodada
      rodada += 1
    end

    tabuleiro.each_with_index do |item, index|
      confere_coluna(item, index, indexT, 'X')
      confere_linha(tabuleiro, index, 'X', indexT)
      confere_coluna(item, index, indexT, 'O')
      confere_linha(tabuleiro, index, 'O', indexT)
    end

    @@final
  end

  def confere_linha(tabuleiro, linha, jogador, indexT)
    combinacao = "#{jogador}#{jogador}#{jogador}#{jogador}"
    array = []
    array_posicoes = []
    cont = 0
    linhaStr = ''
    9.times  do
      array << if tabuleiro[cont][linha].nil?
                 '-'
               else
                 tabuleiro[cont][linha]
               end
      cont += 1
    end
    linhaStr = array.join('')
    linha_jogo = tabuleiro.size - linha - 1
    if linhaStr.include? combinacao
      posicao = linhaStr.rindex(combinacao)
      array_posicoes << indexT[posicao][linha]
      array_posicoes << indexT[posicao + 1][linha]
      array_posicoes << indexT[posicao + 2][linha]
      array_posicoes << indexT[posicao + 3][linha]
      array_posicoes = array_posicoes.sort

      if array_posicoes.last < @@rodada_final
        @@rodada_final = array_posicoes.last
        @@final = "Venceu #{jogador} na rodada #{array_posicoes.last}, na linha #{linha_jogo}"
      end
    end
  end

  def confere_coluna(item, index, indexT, jogador)
    combinacao = "#{jogador}#{jogador}#{jogador}#{jogador}"
    testar = item.join('')
    array_posicoes = []
    posicao = 0
    if testar.include? combinacao
      posicao = testar.rindex(combinacao)
      array_posicoes << indexT[index][posicao]
      array_posicoes << indexT[index][posicao + 1]
      array_posicoes << indexT[index][posicao + 2]
      array_posicoes << indexT[index][posicao + 3]
      array_posicoes = array_posicoes.sort
      if array_posicoes.last < @@rodada_final
        @@rodada_final = array_posicoes.last
        @@final = "Venceu #{jogador} na rodada #{array_posicoes.last}, na coluna #{index}"
      end
    end
  end
end


# 3
class Connect4
  def play(actions)

    b = [[], [], [], [], [], [], [], []] # Criando tabuleiro
    b.map{|c| 8.times{c << ""}} # Criando tabuleiro
    linhas = {"0": 8, "1": 7, "2": 6, "3": 5, "4": 4, "5": 3, "6": 2, "7": 1} # Linhas e colunas equivalentes
    rodadas = 1

    actions.each_line do |play| # Distribuindo jogadas
      index = 0
      coluna = play[3].to_i-1
      index +=1 while b[coluna][index] != ""   # Verificando se a casa está vazia     
      b[coluna][index] = play[0] # Atribuindo valor
      # Verificando ganhadores
      # Colunas
      b.each.with_index do |coluna, i| # Retornar 'i', é a coluna vencedora
        8.times do |i_c|
          if coluna[i_c..i_c+3].join == "XXXX"
            return "Venceu X na rodada #{rodadas}, na coluna #{i+1}"
          end
          if coluna[i_c..i_c+3].join == "OOOO"
            return "Venceu O na rodada #{rodadas}, na coluna #{i+1}"
          end
        end
      end
      # Linhas
      b.transpose.each.with_index do |linha, i| # Retornar 'i', é a linha vencedora
        8.times do |i_c|
          if linha[i_c..i_c+3].join == "XXXX"
            return "Venceu X na rodada #{rodadas}, na linha #{linhas[i.to_s.to_sym]}"
          end
          if linha[i_c..i_c+3].join == "OOOO"
            return "Venceu O na rodada #{rodadas}, na linha #{linhas[i.to_s.to_sym]}"
          end
        end
      end
      rodadas += 1
    end
  end
end


# 4
class Connect4
  def play(actions)
    board = Array.new(8){Array.new(7,"?")}
    round = 0
    winner = nil
    actions = actions.lines(chomp: true).map{|action| action.split("->")}
    actions.map{|act|
      round += 1
      column = board[act[1].to_i-1]
      column.delete("?")
      column.push(act[0])
      column.fill("?",column.length,7-column.length)    
      board.map { |col|
        if col.join.match?(/#{act[0]}{4}/)
        winner = "Venceu #{act[0]} na rodada #{round}, na coluna #{board.index(col)+1}"
        else
          board.transpose.map { |line|
           if line.join.match?(/#{act[0]}{4}/)
             winner = "Venceu #{act[0]} na rodada #{round}, na linha #{8-board.transpose.index(line)}"
           end
          } 
        end
      }
      if winner != nil
        return winner 
      end
    }   
  end 
end


# 5
class Connect4
  
  def initialize
    @board =   Array.new(8) { Array.new(8) }
  end

  def play(actions)
    actions = actions.split("\n").map{|val| val.split("->")}
    
    actions.each_with_index do |val,i|
      col = val[1].to_i - 1
      self.put_in_col(col,val[0])
      round=i+1
      if self.valid_row(round) then return  self.valid_row(round) 
      elsif self.valid_col(round) then return  self.valid_col(round) end  
    end
  end

  def put_in_col(col,val)
    (7).downto(0).each do |i|
        if @board[i][col] == nil then  
          @board[i][col] = val 
          break 
        end  
     end 
  end

  def col_to_row()
    (7).downto(0).each.map{|i| (7).downto(0).each.map{|j|  @board[j][i] } } 
  end

  def valid_col(round)
    self.win?(self.col_to_row.reverse,"coluna",round)
  end

  def valid_row(round)
    self.win?(@board,"linha",round)
  end

  def win?(array,inf,round)
    win = false
    array.each_with_index do |row,index|
      if row.join.include?("XXXX") then win="Venceu X na rodada #{round}, na #{inf} #{index+1}" 
      elsif   row.join.include?("OOOO") then win="Venceu O na rodada #{round}, na #{inf} #{index+1}" end
    end
    win
  end

end


# 6
class Connect4
  def play(actions)
    board = reset_board
    round = 0

    actions.split("\n").map { |play| play.split('->') }.each do |play|
      round += 1
      player = play.first
      column = play.last.to_i - 1
      next_line = board[column].count { |item| !item.empty? }
      board[column][next_line] = player

      board.each do |col|
        player = col.slice_when do |prev, curr|
                   prev != curr
                 end.select { |grp| grp.size >= 4 && grp.first != '' }.dig(0, 1)
        return "Venceu #{player} na rodada #{round}, na coluna #{column + 1}" unless player.nil?
      end

      board.transpose.each do |col|
        player = col.slice_when do |prev, curr|
                   prev != curr
                 end.select { |grp| grp.size >= 4 && grp.first != '' }.dig(0, 1)
        return "Venceu #{player} na rodada #{round}, na linha #{board[column].size - next_line}" unless player.nil?
      end
    end
  end

  private

  def reset_board
    Array.new(8) { Array.new(8, '') }
  end
end


# 7
class Connect4
  def play(actions)
    rodada = 0
    array_jogadas = ["", "", "", "", "", "", "", ""]
    actions.split("\n") do |i|
      if i[0] == "X"
        array_jogadas[i[3].to_i - 1].insert(0, "x")
        rodada += 1
      else 
        array_jogadas[i[3].to_i - 1].insert(0, "o")
        rodada += 1
      end
      if rodada >= 4
        #checa vitória por coluna
        array_jogadas.each do |i|
          if i.include?("xxxx")
            return "Venceu X na rodada #{rodada}, na coluna #{array_jogadas.find_index(i) + 1}"
          elsif i.include?("oooo")
            return "Venceu O na rodada #{rodada}, na coluna #{array_jogadas.find_index(i) + 1}"
          end
        #checa vitória por linha
        for l in 1..8
          string = ""
          for c in 0..7
            string += array_jogadas[c][-l].to_s
            if string.include?("xxxx")
              return "Venceu X na rodada #{rodada}, na linha #{-l + 9}"
            elsif string.include?("oooo")
              return "Venceu O na rodada #{rodada}, na linha #{-l + 9}"
            end
          end
        end
        end
      end
    end
  end
end



# 8
class Connect4
  def play(actions)
    board = Array.new(8){Array.new(7,"?")}
    round = 0
    winner = nil
    actions = actions.lines(chomp: true).map{|action| action.split("->")}
    actions.map{|act|
      round += 1
      column = board[act[1].to_i-1]
      column.delete("?")
      column.push(act[0])
      column.fill("?",column.length,7-column.length)    
      board.map { |col|
        if col.join.match?(/#{act[0]}{4}/)
        winner = "Venceu #{act[0]} na rodada #{round}, na coluna #{board.index(col)+1}"
        else
          board.transpose.map { |line|
           if line.join.match?(/#{act[0]}{4}/)
             winner = "Venceu #{act[0]} na rodada #{round}, na linha #{8-board.transpose.index(line)}"
           end
          } 
        end
      }
      if winner != nil
        return winner 
      end
    }   
  end 
end
