# 1
class StringUtils
  def wavefy(string)
      string.split('').each_with_index.map do |item, index|
        index.odd? ? item.upcase : item.downcase
      end.join('')
  end
end

