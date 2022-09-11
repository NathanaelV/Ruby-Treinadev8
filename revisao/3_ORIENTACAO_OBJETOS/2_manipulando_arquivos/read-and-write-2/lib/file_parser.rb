class FileParser
  def to_binary_file(string_numbers)
    numbers = string_numbers.split(';')
    numbers.map! { |n| n.to_i }
    File.open('data/data.txt', 'w+') do |file|
      numbers.each do |num|
        file.puts num.to_s(2)
      end
    end
  end
end
