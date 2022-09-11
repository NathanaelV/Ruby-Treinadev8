class ElementSwap
  def switch(letters, instructions)
    arr = instructions.split
    
    arr.each do |z|
        a = z[0].to_i
        b = z[-1].to_i
        letters[a], letters[b] = letters[b], letters[a]
    end

    letters
  end
end


=begin

instructions = instructions.chomp.split("\n")
letters_2 = letters.map(&:clone)
instructions.each do |n|
  letters[n[0].to_i] = letters_2[n[3].to_i]
  letters[n[3].to_i] = letters_2[n[0].to_i]
  letters_2 = letters.map(&:clone)
end
letters

=end 
