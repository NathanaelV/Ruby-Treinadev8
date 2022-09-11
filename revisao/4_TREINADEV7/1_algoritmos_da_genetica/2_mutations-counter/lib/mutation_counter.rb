class MutationCounter
  def calculate(array_strands)
    maior = 0
    array_strands.each do |strands|
      count = 0
      (0..(strands.first.length-1)).each do |n|
        if strands.first[n] != strands.last[n]
          count += 1
        end
      end
      if count > maior 
        maior = count
      end
    end
    maior
  end
end