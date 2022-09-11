# Minha Resposta
class LargestInteger
  def find(array)
    
    numeros = Array(1..9).max(9)
    pri = []
    seg = []
    ter = []
    qua = []
    qui = []
    sex = []
    set = []
    ota = []
    non = []
    inter = []
    array_2 = []
    resp = []

    array.each do |arr|
        a = arr.map { |z| z.to_s}
        array_2 << a
    end

    array_2.each do |s|
      # numeros.each do |n|
        s.each do |num|
          if num[0].to_i == 1
            pri << num
          elsif num [0].to_i == 2
            seg << num
          elsif num [0].to_i == 3
            ter << num
          elsif num [0].to_i == 4
            qua << num
          elsif num [0].to_i == 5 
            qui << num
          elsif num [0].to_i == 6
            sex << num
          elsif num [0].to_i == 7
            set << num
          elsif num [0].to_i == 8
            ota << num
          elsif num [0].to_i == 9
            non << num
          end
        end
      inter << non << ota << set << sex << qui << qua << ter << seg << pri
      resp << inter
      inter = []
      pri = []
      seg = []
      ter = []
      qua = []
      qui = []
      sex = []
      set = []
      ota = []
      non = []
    end

    # Retirando aos ARRAYS vazios
    resp.map! do |resp_2|
      resp_2.reject(&:empty?)
    end

    # Colocar na ordem os que começam com o mesmo número.
    conjunto = []
    resposta = []
    resp.each do |resp_2|
      resp_2.each do |b|
        # p b
        if b.join.to_i > [b[1], b[0], b[2], b[3]].join.to_i
          if b.join.to_i > [b[2], b[0], b[1], b[3]].join.to_i
            if b.join.to_i > [b[2], b[3], b[0], b[1], b[4]].join.to_i
              if b.join.to_i > [b[0], b[2], b[1], b[3], b[4]].join.to_i
                conjunto << b # (0,1,2)
              else
                conjunto << [b[0], b[2], b[1], b[3], b[4]]
              end
            else
              conjunto << [b[2], b[3], b[0], b[1], b[4]]
            end
          else 
            conjunto << [b[2], b[0], b[1], b[3]] # (2,0,1)
          end
        elsif [b[1], b[0], b[2], b[3]].join.to_i > [b[2], b[0], b[1], b[3]].join.to_i
          if [b[1], b[0], b[2], b[3]].join.to_i > [b[1], b[0], b[2], b[3]].join.to_i
            conjunto << [b[1], b[0], b[2], b[3]] # (1,0,2)
          else
            if [b[1], b[0], b[3], b[2]].join.to_i > [b[1], b[2], b[0], b[3]].join.to_i
              conjunto << [b[1], b[0], b[3], b[2]]
            else
              if [b[1], b[2], b[0], b[3]].join.to_i > [b[1], b[0], b[2], b[3]].join.to_i
                conjunto << [b[1], b[2], b[0], b[3]]
              else
                conjunto << [b[1], b[0], b[2], b[3]]
              end
            end
          end
        elsif [b[2], b[0], b[1], b[3]].join.to_i > [b[2], b[1], b[0], b[3]].join.to_i
          conjunto << [b[2], b[0], b[1], b[3]] # (2,0,1)
        else
          conjunto << [b[2], b[1], b[0], b[3]] # (2,1,0)
        end
        #p conjunto
      end
      resposta << conjunto.join.to_i
      conjunto = []
    end
    resposta
  end
end


# 1
class LargestInteger
  def find(array)
    ordered_sequence = []
    ordered_pairs = []
    result = []
    
    array.each do |numbers|
      order = []
      (0..9).reverse_each do |number|
        numbers.each do |first_character|
          order << first_character if first_character.to_s[0].to_i == number
        end
        unless order.empty?
          ordered_sequence << order
          order = []
        end
        if number.zero?
          ordered_pairs << ordered_sequence
          ordered_sequence = []
        end
      end
    end
    ordered_pairs.each do |pairs|
      biggest_integers = []
      combinations = []
      pairs.map do |pair|
        pair.permutation do |combination|
          combinations << combination.join.to_i
        end
        biggest_integers << combinations
        combinations = []
      end
      result << biggest_integers.map(&:max)
    end
    result.map(&:join).map(&:to_i)
  end
end


# 2
class LargestInteger
  def find(array)
    array.map do |arr|
      arr.map(&:to_s).sort.slice_when { |prev, cur| cur.chars.first != prev.chars.first }.map do |a|
        a.permutation.map { |m| m.join.to_i }.max 
      end.reverse.join.to_i
    end
  end
end


# 3 
class LargestInteger
  def find(array)
    result = []

    array.each do |array|
      loop do
        swapped = false

        (array.size-1).times do |i|
          s1 = "#{array[i]}" + "#{array[i+1]}"
          s2 = "#{array[i+1]}" + "#{array[i]}"

          if s1 < s2
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
          end
        end

        break if not swapped
      end

      result << array.join.to_i
    end

    result
  end
end


# 4
class LargestInteger
  def find(array)
    array.map do |arr|
      arr.map(&:to_s).sort { |a, b| b+a <=> a+b }.join.to_i
    end
  end
end


# 5
class LargestInteger
  def find(array)
    res=[]
    array.map{|item| res<< calc_find(item,0).join.to_i}
    res
  end

  def calc_find(array, dig)  
    num_arr={}

    array.sort.reverse.map do |num|
      first_dig=num.digits.reverse[dig]
      
      if  (first_dig==nil)
        first_dig=num.digits.reverse[0]+0.5
      else
        first_dig = num.digits.reverse[dig]
      end
  
      if not (num_arr.include?(first_dig))
        num_arr[first_dig]=[]
      end
    
      num_arr[first_dig] << num
    
    end

    res=[]
  
    num_arr.keys.sort.reverse.map{|set|
        if (num_arr[set].size!=1)
            calc_find(num_arr[set], dig+1).map {|item| 
              res<< item.to_s }
        else
          res<< num_arr[set][0].to_s
        end
        } 
    return res
end
end


# 5
class LargestInteger
  def find(array)
    resultado = []
    array.each do |a|
      x = a.permutation().to_a
      total = 0
      x.each do |i|
        parcial = ''
        i.each do |j|
          parcial += j.to_s()  
          if parcial.to_i() > total
            total = parcial.to_i()
          end
        end
      end
      resultado << total
    end
    resultado
  end
end


# 6
class LargestInteger
  def find(array)
    result = []

    array.each do |array|
      loop do
        swapped = false

        (array.size-1).times do |i|
          s1 = "#{array[i]}" + "#{array[i+1]}"
          s2 = "#{array[i+1]}" + "#{array[i]}"

          if s1 < s2
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
          end
        end

        break if not swapped
      end

      result << array.join.to_i
    end

    result
  end
end


# 7
class LargestInteger
  def find(array)

    def larg_int_partial(array)
      temp = 0
      j = 0
      while (j < array.length-1)  
          for i in 0..array.length-1
            first_digit_num = array[i].to_s.split('')[0].to_i
            first_digit_next_num = array[i + 1].to_s.split('')[0].to_i
            if (first_digit_num < first_digit_next_num)
                temp = array[i]
                array[i] = array[i+1]
                array[i+1] = temp        
            end  #fim condicional
            
            if (first_digit_num == first_digit_next_num) && (array[i].to_s.length == array[i+1].to_s.length) && (array[i] < array[i+1])
                temp = array[i]
                array[i] = array[i+1]
                array[i+1] = temp
            end

            if (array[i].to_s.length == 3) && (array[i+1].to_s.length == 2) && (first_digit_num == first_digit_next_num) && (array[i].to_s.split('')[1].to_i == array[i+1].to_s.split('')[1].to_i)
              temp = array[i]
              array[i] = array[i+1]
              array[i+1] = temp
            end  
              
          end #fim laço array
          j += 1
      end #fim do while
      array
    end

    result = []
    array.each do |sub_array|
      result << larg_int_partial(sub_array).join.to_i
    end
    
    result
  end
end


# 8 
class LargestInteger
  def find(array)
    final = []
    array.each do |item|
      order = item.map(&:to_s).sort { |a, b| b <=> a }

      qtd = order.size - 1
      i = 0
      qtd.times do
        if order[i].size == 2 && order[i + 1].size == 1
          if order[i][0] == order[i + 1] && (order[i][1] < order[i + 1])
            temp = order[i + 1]
            order[i + 1] = order[i]
            order[i] = temp
          end
        elsif order[i].size == 3 && order[i + 1].size == 2
          if order[i][0] == order[i + 1][0] && order[i][1] == order[i + 1][1] && ((order[i][0] > order[i][1] || order[i][1] == '5')) && (order[i][2] < order[i + 1][1])
            temp = order[i + 1]
            order[i + 1] = order[i]
            order[i] = temp
          end
        end
        i += 1
      end
      final << order.join.to_i
    end
    final
  end
end


# 9
class LargestInteger
  def find(array)
    array.map do |arr|
      arr.map(&:to_s).sort.slice_when { |prev, cur| cur.chars.first != prev.chars.first }.map do |a|
        a.permutation.map { |m| m.join.to_i }.max 
      end.reverse.join.to_i
    end
  end
end


# 10 
class LargestInteger
  def find(array)

    def larg_int_partial(array)
      temp = 0
      j = 0
      while (j < array.length-1)  
          for i in 0..array.length-1
            first_digit_num = array[i].to_s.split('')[0].to_i
            first_digit_next_num = array[i + 1].to_s.split('')[0].to_i
            if (first_digit_num < first_digit_next_num)
                temp = array[i]
                array[i] = array[i+1]
                array[i+1] = temp        
            end  #fim condicional
            
            if (first_digit_num == first_digit_next_num) && (array[i].to_s.length == array[i+1].to_s.length) && (array[i] < array[i+1])
                temp = array[i]
                array[i] = array[i+1]
                array[i+1] = temp
            end

            if (array[i].to_s.length == 3) && (array[i+1].to_s.length == 2) && (first_digit_num == first_digit_next_num) && (array[i].to_s.split('')[1].to_i == array[i+1].to_s.split('')[1].to_i)
              temp = array[i]
              array[i] = array[i+1]
              array[i+1] = temp
            end  
              
          end #fim laço array
          j += 1
      end #fim do while
      array
    end

    result = []
    array.each do |sub_array|
      result << larg_int_partial(sub_array).join.to_i
    end
    
    result
  end
end

