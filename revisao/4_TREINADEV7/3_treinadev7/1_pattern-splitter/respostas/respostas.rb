# 1
class PatternSplitter
  def split_pattern(string)
    # Hello World Program in Ruby
    splited = []
  first_pair=''
  chars_coord =''
  coordenada=''


  string.split('').map do |char| 
    chars_coord.include?(char) ?
        (coordenada+=char)
                :
        (   if (chars_coord.size==2)and(first_pair.size==2)
                #passar para a proxima coordenada
                splited<< coordenada
                first_pair=''
                chars_coord=char
                coordenada=char
        
            elsif first_pair.include?(char)                
                #passar para a proxima coordenada
                splited<< coordenada
                first_pair=''
                chars_coord=char
                coordenada=char
    
            elsif (chars_coord.size==2)and(first_pair=='')                
                #mudar o first_pair e chars_coord
                first_pair=chars_coord
                chars_coord=char
                coordenada+=char
    
            else     
                #adicionar char no chars_coord
                chars_coord+=char
                coordenada+=char
    
            end
        )
    
  end

  splited<< coordenada

  splited
  end

end


# 2
class PatternSplitter
  def split_pattern(string)
    result = []

    while string != ""
      result << corta_par(string) + corta_par(string)
    end

    return result
  end #fim de split_pattern

  def pega_par(string)
    a = string[0]
    b = ""
    string.split(//).each do |char|
      if a != char
        b = char
        return a, b
      end  
    end
  end #fim do método pega_par  

  def corta_par(string)
    a, b = pega_par(string)
    temp = string.clone
    recorte = ""
    string.split(//).each do |char|
      if char != a && char != b
        break
      end
      recorte << string.slice!(0)  
    end
    if temp == recorte
      string = ""
      return recorte
    else  
      return recorte
    end  
  end #fim do método corta_par  
end


# 3
class PatternSplitter
  def split_pattern(string)
    indice = string.length
    i=2
    case indice
    when 0 .. 19
       [string]
    when 20 .. 341

      if (indice % i) == 0
        r=indice/i
        string.scan(/.{1,#{r}}/)
      else
        begin
          i+=1
        end while (indice % i) != 0
        r=indice/i
        string.scan(/.{1,#{r}}/)
      end
    else
      r=indice/19
      string.scan(/.{1,#{r}}/)
    end
  end
end


# 4
class PatternSplitter
  def split_pattern(string)
    v = []
    count = 0
    if string[0] != string[1]
      char_0 = string[0]
      char_1 = string[1]
    else
      char_0 = string[1]
      char_1 = string[2]
    end

    string.each_char do |char|
      count += 1
      if char != char_0 && char != char_1
        v << count
      else
        break if not v.empty?
      end
    end

    chunk(string, v.max)
  end

  def chunk(string, size)
    regex = Regexp.union(/.{#{size}}/)

    string.scan(regex)
  end
end


# 5
class PatternSplitter
  def split_pattern(string)

    primeira_parte =[]
    primeira_parte << string.chars.uniq[0] 
    primeira_parte << string.chars.uniq[1]

    segunda_parte = string.chars.uniq.delete_if {|a| primeira_parte.include?(a)} 

    indice_segunda = []

    string.chars.map{ |letra|
      if primeira_parte.include?(letra) == false
        indice_segunda << string.index(letra)
      end
    }

    primeiro_indice_segunda = indice_segunda.min
    indice_nova_seq = []

    string.each_char.with_index do |letra, indice|
      if primeira_parte.include?(letra) == true && indice > primeiro_indice_segunda
        indice_nova_seq << string.index(letra)
      end
    end
    
    sequencia = ""
    resultado = []

    string.each_char.with_index do |letra, indice| 
        if primeira_parte.include?(letra) == true && indice < primeiro_indice_segunda 
          sequencia << letra
        elsif segunda_parte.include?(letra) == true && indice >= primeiro_indice_segunda
          sequencia << letra
        elsif primeira_parte.include?(letra) == true && indice > primeiro_indice_segunda
          break
        end
    end

    tamanho = sequencia.length
    string.chars.each_slice(tamanho).map(&:join)

  end
end


# 6
class PatternSplitter
  def split_pattern(string)
    result = []

    while string != ""
      result << corta_par(string) + corta_par(string)
    end

    return result
  end #fim de split_pattern

  def pega_par(string)
    a = string[0]
    b = ""
    string.split(//).each do |char|
      if a != char
        b = char
        return a, b
      end  
    end
  end #fim do método pega_par  

  def corta_par(string)
    a, b = pega_par(string)
    temp = string.clone
    recorte = ""
    string.split(//).each do |char|
      if char != a && char != b
        break
      end
      recorte << string.slice!(0)  
    end
    if temp == recorte
      string = ""
      return recorte
    else  
      return recorte
    end  
  end #fim do método corta_par  
end


# 7
class PatternSplitter
  def split_pattern(string)
    a = ""
    b = []
    c = []
    d = 0
    string.each_char do |x|
      if !(b.to_s).include? x
        b << x  
        d += 1
      end
      if d > 2
        if x == b[0] || x == b[1]
          c << a
          a = ""
          b = []
          a << x
          b << x
          d = 1
        else  
          a << x
        end
      else  
        a << x
      end
    end
    c << a
    c
  end
end


# 8 
class PatternSplitter
  def split_pattern(string)
    k_a = []
    k_b = []

    tmp_output = []
    output = []

    string.chars.each_with_index do |char,index|

      if k_a.size < 2 && !k_a.include?(char)
        k_a << char
      end

      if k_a.size == 2 && k_b.size < 2 && !k_a.include?(char) && !k_b.include?(char)
        k_b << char
      end

      if k_b.size == 2 && !k_b.include?(char)
        output << tmp_output.join
        tmp_output = []
        k_a = []
        k_b = []
      end

      tmp_output << char

      if index == string.size - 1
        output << tmp_output.join
      end
    end

    if output.size == 1 && output[0].size > 10
      output[0] = output[0].chars.each_slice(output[0].size/2).map(&:join)
    elsif output.size > 1
      output = output.map do |item|
        if output.first.size == item.size
          item
        else
          item.chars.each_slice(item.size/2).map(&:join)
        end
      end
    end

    output.flatten
  end
end


# 9
class PatternSplitter
  def split_pattern(string)
    letra1 = ""
    letra2 = ""
    letra3ou4 = ""
    resultado = []
    coord = []
    letras = string.split("")
    letras.each do |letra|
      if letra1 == "" or letra1 == letra then
        letra1 = letra
      elsif letra2 == "" or letra2 == letra then
        letra2 = letra
      else
        letra3ou4 = letra
      end
      if (letra == letra1 or letra == letra2) and letra3ou4 != "" then
        resultado << coord.join
        coord = []
        letra3ou4 = ""
      end
      if letra.equal?(letras.last) then
        coord << letra
        resultado << coord.join
        coord = []
        letra3ou4 = ""
      end
      coord << letra
    end
    resultado
  end
end


# 10
class PatternSplitter
  def split_pattern(string)
    first_c = string.first
    second_c = string.gsub(/[#{first_c}]/,'').first
    string.split(/[^#{first_c}#{second_c}]/).filter{|i| not i.empty?}.
      zip(string.split(/[#{first_c}#{second_c}]/).
      filter{|i| not i.empty?}).map(&:join)
  end
end

# 11
class PatternSplitter
  
  def split_pattern(string)
    
    coord = []
    coord_orig = []
    string.scan(/\w{1}/){|x| coord_orig << x}
    if coord_orig.count > 6      
      string.scan(/\w{#{split_instructions(string)}}/){|x| coord << x}
    else
      return [string]      
    end 
    coord  
  end

  def split_instructions(string)
    result = []
    string.split('').each_with_index{|char| result << char}
    range_div = []
    1..20.times do |div|      
      range_div << div +1  if  (result.count % (div + 1)) == 0 && result.count / (div + 1) > 6
    end   
    return result.count / range_div.max    
  end
end


# 12
class PatternSplitter
  def split_pattern(string)
    padrao1 = string[0] + string[1] + string[2]
    padrao2 = string[string.size - 3] + string[string.size - 2] + string[string.size - 1] 
    letras = ""
    array_coordenadas = []
    i = 0
    while i < string.size
      if padrao1.include?(string[i])
        letras += string[i]
        i += 1
      else
        while padrao1.include?(string[i]) == false
          letras += string[i]
          i += 1
          if i == string.size 
            break
          end
        end
        array_coordenadas.push(letras)
        letras = ""
      end
    end
  array_coordenadas
  end
end