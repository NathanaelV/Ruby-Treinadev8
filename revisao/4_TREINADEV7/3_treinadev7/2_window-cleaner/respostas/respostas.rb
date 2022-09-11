# 1
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    levels_array = [*1..levels]
    windows_array = [*1..windows_per_level]
    windows_cleaned = 0
    coordinates.split('').each do |char|
      if char == "B"
        levels_array = levels_array.take(levels_array.length/2)
      elsif char == "T"
        levels_array = levels_array.drop(levels_array.length/2)
      elsif char == "D"
        windows_array = windows_array.drop(windows_array.length/2)
      elsif char == "E"
        windows_array = windows_array.take(windows_array.length/2)
      elsif char == "\n"
        if (levels_array[0] + windows_array[0]).even?
          windows_cleaned += 1
          levels_array = [*1..levels]
          windows_array = [*1..windows_per_level]
        else
          levels_array = [*1..levels]
          windows_array = [*1..windows_per_level]
        end
      end
    end
    windows_cleaned
  end
end


# 2
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    coordinates = coordinates.split("\n")
    final = 0
    testing = 0
    windows = [0, windows_per_level -1]
    level = [0, levels -1]
    coordinates.each do |value|
      windows = [0, windows_per_level -1]
      level = [0, levels -1]
      value.each_char do |char|
        if char == "B"
          level[1] = (level[1] + level[0] +1)/2 -1
        elsif char == "T"
          level[0] = (level[0] + level[1] +1)/2 
        elsif char == "E"
          windows[1] = (windows[1] + windows[0] + 1)/2 -1
        elsif char == "D"
          windows[0] = (windows[0] + windows[1] +1)/2 
        end
    
        if level[0] == level[1] && windows[0] == windows[1]
          testing = level[0] + windows[0]
          if testing.even?
            final +=1 
          end
        end
      end
    end
    final
  end
end


# 3
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    s = coordinates.lines(chomp: true).map do |windows|
      top_l = levels - 1
      bot_l = 0
      top_c = windows_per_level - 1
      bot_c = 0
      windows.chars.each do |w|
        case w
        when 'B'
          top_l = (top_l + bot_l) / 2
        when 'T'
          bot_l = (top_l + bot_l) / 2
        when 'E'
          top_c = (top_c + bot_c) / 2
        else
          bot_c = (top_c + bot_c) / 2
        end
      end
      top_l + top_c
    end
    s.filter(&:even?).count
  end
end


# 4
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    cleans=0
    coordinates = coordinates.strip().split(/\n/)
    coordinates.map do |coord|
      #levels
      floors = Array.new(levels){|i| i}

      level_instr= coord.scan(/[BT]/).join()
      level_instr=level_instr.gsub(/T/,'1').gsub(/B/,'0')
      level = half_calc(floors,level_instr)

      #windows
      windows = Array.new(windows_per_level){|i| i}

      wind_instr= coord.scan(/[DE]/).join()
      wind_instr=wind_instr.gsub(/D/,'1').gsub(/E/,'0')
      wind = half_calc(windows,wind_instr)

      (level+wind)%2==0 ? (cleans+=1):()
    end

    cleans
  end

  def half_calc(lista,instr)
    
    instr.split('').map{|item| item=='0' ? 
        (
            lista=lista[0..((lista.size/2)-1)]
            ):(
            lista=lista[((lista.size/2))..(lista.size-1)] 
                )
      }
    
    return lista[0]
  end
end


# 5
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    def interpretar_coordenadas(coordenadas, quantidade)
    index = (0..quantidade-1)
    arr = index.map{|i| i}
    coordenadas.chars.each{|c|
      if c == 'D' or c == 'T'
        arr = arr.partition{|n| n > arr.last - (arr.size/2)}
        arr = arr[0]
      else c == 'E' or c == 'B'
        arr = arr.partition{|n| n <= arr.last - (arr.size/2)}
        arr = arr[0]
      end
    }
    arr[0]
    end

    def clasificar(coordenada)
      coordenadas_andares = ''
      coordenadas_janela = ''
      coordenada.chars.each{|caracter|
      if caracter == 'B' or caracter == 'T'
        coordenadas_andares << caracter
      else
        coordenadas_janela << caracter
      end
      }
      resultado = [coordenadas_andares, coordenadas_janela]
    end

    coordenadas = coordinates.split
    contador = 0
    
    coordenadas.each do |coordenada|
      resultado = clasificar(coordenada)
      andares = interpretar_coordenadas(resultado[0], levels)
      janelas = interpretar_coordenadas(resultado[1], windows_per_level)
      numeros = [andares, janelas]
      if numeros.sum.even?
        contador += 1
      end
    end
    contador
  end
end


# 6
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)

    predio = {andares: [], janelas: [], lavadas: 0}
    levels.times.with_index do |i|
        predio[:andares] << i
    end
    windows_per_level.times.with_index do |i|
        predio[:janelas] << i
    end
    andares = predio[:andares]
    janelas = predio[:janelas]
    
    coordinates.each_line do |line| #coordenada string
      line.each_char do |char|      #coordenada letra
        case char
          when "B"
            predio[:andares] = predio[:andares].slice(0..(predio[:andares].length/2-1))

          when "T"
            predio[:andares] = predio[:andares].slice((predio[:andares].length/2)..predio[:andares].length)

          when "D"
            predio[:janelas] = predio[:janelas].slice((predio[:janelas].length/2)..predio[:janelas].length)

          when "E"
            predio[:janelas] = predio[:janelas].slice(0..(predio[:janelas].length/2-1))
        end
      end
      if (predio[:andares][0] + predio[:janelas][0]).even?
        predio[:lavadas] += 1
      end
      predio[:andares] = andares
      predio[:janelas] = janelas
    end
    predio[:lavadas]
  end
end


# 7
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    total_levels = (0..levels-1).to_a
    total_windows = (0..windows_per_level-1).to_a
    total = 0

    coordinates.split("\n").each do |coordinate|
      level = total_levels
      window = total_windows

      coordinate.chars.each do |c|
        if c == 'T'
          level = level.slice(level.size/2..level.size)
        elsif c == 'B'
          level = level.slice(0..level.size/2 - 1)
        elsif c == 'D'
          window = window.slice(window.size/2..window.size)
        elsif c == 'E'
          window = window.slice(0..window.size/2 - 1)
        end
      end

      total += 1 if (level.pop + window.pop).even?
    end

    total
  end
end


# 8 
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    coordinates = coordinates.split("\n")
    final = 0
    testing = 0
    windows = [0, windows_per_level -1]
    level = [0, levels -1]
    coordinates.each do |value|
      windows = [0, windows_per_level -1]
      level = [0, levels -1]
      value.each_char do |char|
        if char == "B"
          level[1] = (level[1] + level[0] +1)/2 -1
        elsif char == "T"
          level[0] = (level[0] + level[1] +1)/2 
        elsif char == "E"
          windows[1] = (windows[1] + windows[0] + 1)/2 -1
        elsif char == "D"
          windows[0] = (windows[0] + windows[1] +1)/2 
        end
    
        if level[0] == level[1] && windows[0] == windows[1]
          testing = level[0] + windows[0]
          if testing.even?
            final +=1 
          end
        end
      end
    end
    final
  end
end


# 9
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    coord_floors = { 'B' => 0, 'T' => 1 }
    coord_windows = { 'E' => 0, 'D' => 1 }
    counter = 0

    coordinates.split("\n").each do |coordinate|
      coordinate = coordinate.chars
      coordinate_separator = coordinate.count { |c| coord_floors.include? c }

      floors = coordinate.slice(0...coordinate_separator).map { |l| coord_floors[l] }
      windows = coordinate.slice(coordinate_separator...coordinate.size).map { |l| coord_windows[l] }

      floors = calculate_range(floors, (0...levels).to_a)
      windows = calculate_range(windows, (0...windows_per_level).to_a)

      counter += 1 if (floors + windows).even?
    end

    counter
  end

  private

  def calculate_range(coordinate, range)
    result = range.each_slice(range.size / 2).to_a[coordinate.shift]
    return result.first if result.one?

    calculate_range(coordinate, result)
  end
end


# 10
class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    nlimpas = 0
    andares = []
    janelas = []
    coordinates.split.each do |w|
      (0...levels).each do |i|
        andares << i
      end
      (1..windows_per_level).each do |i|
        janelas << i
      end
      w.chars.each do |i|
        andares = andares.shift(andares.size/2) if i == "T"
        andares = andares.pop(andares.size/2) if i == "B"
        janelas = janelas.shift(janelas.size/2) if i == "E"
        janelas = janelas.pop(janelas.size/2) if i == "D"
      end
      nlimpas += 1 if (andares[0] + janelas[0]).even?
      andares = []
      janelas = []
    end
    nlimpas
  end
end