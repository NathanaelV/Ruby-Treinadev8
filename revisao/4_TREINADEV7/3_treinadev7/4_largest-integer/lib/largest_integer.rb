class LargestInteger
  def find(arrays)
    resp = []
    arrays.each do |array|
      temp = []
      maior = index = 0
      array.map! { |n| n.to_s }

      # Organiza pelo primeiro número
      array.each do |n|
        if temp == []
          temp << n
        else
          temp.each_with_index do |n_temp, i_temp|
            if n[0].to_i > n_temp[0].to_i
              index = i_temp
              break
            else
              index = i_temp + 1
            end
          end
          temp.insert(index, n)
        end
      end

      # Organizar pelo segundo número
      array = temp.map { |n| n }
      
      array.each do |n|
        temp.each_with_index do |n_temp, i_temp|
          if n[0] == n_temp[0]
            if n_temp[1].nil?
              teste = n_temp[0].to_i
            else
              teste = n_temp[1].to_i
            end
            if n[1].nil?
              numero = n[0].to_i
            else
              numero = n[1].to_i
            end

            if numero > teste
              index = i_temp
              break
            else
              index = i_temp + 1
            end
          end
        end
        temp.insert(index, n)
      end
      temp.uniq!

      # Organizando pelo terceiro número
      array = temp.map { |n| n }

      array.each do |n|
        temp.each_with_index do |n_temp, i_temp|
          if n[0] == n_temp[0] && n[1] == n_temp[1]
            if n_temp[2].nil?
              teste = n_temp[0].to_i - 1
            else
              teste = n_temp[2].to_i
            end
            if n[2].nil?
              numero = n[0].to_i
            else
              numero = n[2].to_i
            end

            # Caso 151: 1º num = 3º num, porém 1º < 2º
            # Caso 858: 1º num = 3º num, porém 1º > 2º
            if n[0].to_i == n[2].to_i
              if n[0].to_i > n[1].to_i
                index = i_temp
                break
              else
                index = i_temp + 1
                break # Para o index não ser alterado posteriormente
              end
            end
            if numero > teste
              index = i_temp
              break
            else
              index = i_temp + 1
            end
          end
        end
        temp.insert(index, n)
      end
      temp.uniq!
      resp << temp.join.to_i
    end
    resp
  end
end