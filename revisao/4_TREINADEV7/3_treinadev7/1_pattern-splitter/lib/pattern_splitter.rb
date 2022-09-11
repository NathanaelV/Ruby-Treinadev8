class PatternSplitter
  def split_pattern(string)
    arr = []

    while string != ''
      letra_1 = letra_2 = letra_3 = letra_4 = ''
      count = index = 0

      string.each_char.with_index do |ch, i|
        if i == 0
          letra_1 = ch
        elsif
          if ch != letra_1 && letra_2 == ''
            letra_2 = ch
          elsif ch != letra_1 && ch != letra_2 && letra_3 == ''
            letra_3 = ch
          elsif ch != letra_1 && ch != letra_2 && ch != letra_3 && letra_4 == ''
            letra_4 = ch
          elsif ch != letra_3 && ch != letra_4 && letra_3 != ''
            index = i - 1
            break
          end
        end
        index = i
      end

      arr << string[0..index]
      string = string[(index+1)..-1]

    end
    arr
  end
end
