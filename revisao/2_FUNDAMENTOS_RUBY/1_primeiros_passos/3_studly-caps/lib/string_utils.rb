class StringUtils
  def wavefy(string)
    string = string.downcase
    string.each_char.with_index do |ch, i|
      if i % 2 == 1
        string[i] = string[i].upcase
      end
    end
  end
end
