class Chars
  def unique_quantity(sequence)
    arr = sequence.split(' ')
    arr.map! do |n|
      n.split('').uniq.join
    end
    arr.join.length
  end
end
