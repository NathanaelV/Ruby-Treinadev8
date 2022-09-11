# 1
class Substring
  def find(string, target)
    smallest_length = string.length
    ix_start = 0
    ix_end = 0

    string.each_char.with_index do |char, index_start|
      (0..string.length).each do |index_end|
        if target_scavenger(string[index_start, index_end], target)
          if (string[index_start, index_end].length <= smallest_length)
            smallest_length = string[index_start, index_end].length
            ix_start = index_start
            ix_end = index_end
          end
        end
      end # each
    end # each_char

    string[ix_start, ix_end]
  end

  def target_scavenger(string, target)
    count = 0
    target.chars.each do |char|
      count += 1 if string.chars.uniq.include?(char)
    end
    count == target.length
  end

end


# 2
class Substring
  def find(string, target)
    bool = false
    list = []
    string.chars.each.with_index do |c, index|
      target_aux = target
      if target_aux.include?(c)
        s = ""
        target_aux = target_aux.delete(c)
        string[index..].chars.each do |i|
          s << i
          if target_aux.include?(i)
            target_aux = target_aux.delete(i)
          end
          if target_aux.empty?
            break
          end
        end
        list << (target_aux.empty? ? s : "")
      end
    end
    list.filter{|i| i != ""}.sort_by{|i| i.length}.first
  end
end


# 3
class Substring
  def find(string, target)
    # char_set armazena as ocorrencias de cada target
    char_set={}

    target.split('').map{|char| char_set[char]=[]}

    string.split('').map.with_index do |char,index| 
        if (char_set.include?(char))
            char_set[char]<< index
        end
      end

    #possib_set monta arrays das combinacoes possiveis com 1 ocorrencia de cada target
    possib_set=[]

    char_set.keys.map do |item|
        if possib_set==[]
            char_set[item].map{|item| possib_set<<[item]}
        
        else
            possib_aux = []
            char_set[item].map{|conj1| possib_set.map{|conj2| 
            possib_aux<< [conj1]+conj2}}
            possib_set=possib_aux
        end
      end

    # a menor diferenca entre a menor e a maior ocorrencia é buscada entre os arrays de possib_set
    smalldif=string.size+1
    smaller=[0,string.size]
    possib_set.map do |arr|
        arr = arr.sort
        dif = arr[arr.size-1]-arr[0]
        if dif<smalldif
            smalldif=dif+1            
            smaller=[arr[0],arr[arr.size-1]]          
        end
      end

    string[smaller[0]..smaller[1]]        
  end
end


# 4
class Substring
  def find(string, target)
    str = ''
    positions = []
    target_letters = target.chars

    string.chars.each_with_index do |letter, index|
      target.chars.each do |target_letter|
        positions << [letter, index] if letter == target_letter
      end
    end

    (positions[0][1]..positions[-1][1]).map do |position|
      string.chars.each_with_index do |letter, index|
        str << letter if position == index
      end
    end

    possibilities = []
    positions.permutation(2) do |combinations|
      unless string.slice(combinations[0][1]..combinations[1][1]).empty?
        possibilities << string.slice(combinations[0][1]..combinations[1][1]) 
      end
    end

    valid_possibilities = []
    possibilities.each do |possibility|
      character_counter = 0
      target_letters.each do |letter|
        character_counter += 1 if possibility.include?(letter)
        valid_possibilities << possibility if character_counter == target_letters.size
      end
    end
    result = valid_possibilities.sort_by(&:size)
    result.first
  end
end


# 5
class Substring
  def find(string, target)
    smallest_length = string.length
    ix_start = 0
    ix_end = 0

    string.each_char.with_index do |char, index_start|
      (0..string.length).each do |index_end|
        if target_scavenger(string[index_start, index_end], target)
          if (string[index_start, index_end].length <= smallest_length)
            smallest_length = string[index_start, index_end].length
            ix_start = index_start
            ix_end = index_end
          end
        end
      end # each
    end # each_char

    string[ix_start, ix_end]
  end

  def target_scavenger(string, target)
    count = 0
    target.chars.each do |char|
      count += 1 if string.chars.uniq.include?(char)
    end
    count == target.length
  end

end


# 6
class Substring
  def find(string, target)
    a = string.split('')
    b = target.split('')
    menor_substring = string
    if (b - a).empty? == false
      return "Substring não encontrada"
    else
      i = 0
      while i < a.size
        menor_substring_tmp = ""
        if b.include?(a[i])
          k = i
          while k < a.size
            if (b - menor_substring_tmp.split('')).empty? == false
              menor_substring_tmp += a[k]
              k += 1
            else
              if menor_substring_tmp.size <= menor_substring.size 
                menor_substring = menor_substring_tmp
              end
              break
            end
          end
        end
      i += 1
      end
    end
  menor_substring
  end
end


# 7
class Substring
  def find(string, target)
    possibilities = []
    (1..string.length).each do |i|
      string.chars.each_cons(i) do |group|
        if target.chars - group == []
          possibilities << group.join
        end
      end
    end
    possibilities.sort_by {|word| word.length}[0]
  end
end


# 8 
class Substring
  def find(string, target)
    menor_ate_agora = string
    while true
      alvo = []
      target.chars.each do |w|
        alvo << string.index(w)
      end
      break if alvo.include? nil
      menor_ate_agora = string[alvo.min..alvo.max] if string[alvo.min..alvo.max].size < menor_ate_agora.size
      string = string[1...string.size]
    end
    menor_ate_agora
  end
end


# 9
class Substring
  def find(string, target)
    target_hash = target.chars.to_h { |c| [c, []] }

    string.each_char.with_index { |c, i| target_hash[c] << i if target_hash.include? c }

    first_target, *other_targets = target_hash.values

    aux = first_target.product(*other_targets).map(&:minmax).min do |a, b|
      (a.last - a.first) <=> (b.last - b.first)
    end

    string.slice(aux.first..aux.last)
  end
end


# 10
class Substring
  def find(string, target)
    substring = []
    shortest_substring =[]
    target_chars = target.chars
    string.each_char do |char|
      if substring == [] && char.match?(/[#{target}]/)
        substring.push(char)
      elsif !substring.empty?
        if ((shortest_substring.length > substring.length) || shortest_substring.empty?) && 
          ((target_chars & substring).eql?(target_chars))  
          shortest_substring = substring.join
          substring.delete_at(0)
          substring = substring.drop_while{|value| !value.match?(/[#{target}]/)}    
        end
        if !((target_chars & substring).eql?(target_chars))
          substring.push(char)
        end
      end
    end
    substring.clear 
    string.reverse.each_char do |char|
      if substring == [] && char.match?(/[#{target}]/)
        substring.push(char)
      else 
        if ( shortest_substring.length > substring.length || shortest_substring.empty?) && 
                                        ((target_chars & substring).eql?(target_chars))
          shortest_substring = substring.join.reverse
          substring.delete_at(0)
          substring = substring.drop_while{|value| !value.match?(/[#{target}]/)}     
        end
        if !((target_chars & substring).eql?(target_chars)) && !substring.empty?
          substring.push(char)
        end
      end
    end
    shortest_substring
  end
end


# 11
class Substring
  def find(string, target)
    possibilities = []
    (1..string.length).each do |i|
      string.chars.each_cons(i) do |group|
        if target.chars - group == []
          possibilities << group.join
        end
      end
    end
    possibilities.sort_by {|word| word.length}[0]
  end
end


# 12
class Substring
  def find(string, target)
    target_hash = target.chars.to_h { |c| [c, []] }

    string.each_char.with_index { |c, i| target_hash[c] << i if target_hash.include? c }

    first_target, *other_targets = target_hash.values

    aux = first_target.product(*other_targets).map(&:minmax).min do |a, b|
      (a.last - a.first) <=> (b.last - b.first)
    end

    string.slice(aux.first..aux.last)
  end
end