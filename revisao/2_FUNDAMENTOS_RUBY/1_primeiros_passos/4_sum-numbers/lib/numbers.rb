class Numbers
  def sum_text(numbers_text)
    numbers = numbers_text.split("\n")
    numbers.map! { |n| n.to_i } 
    numbers.sum
  end
end