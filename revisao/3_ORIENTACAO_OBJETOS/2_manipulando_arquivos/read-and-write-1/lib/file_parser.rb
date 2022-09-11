class FileParser
  def to_integer(string_binary)
    string_binary.to_i(2)
  end

  def convert(file_path)
    file = File.read(file_path)
    binaries = file.split("\n")
    binaries.map! do |bin|
      bin.to_i(2)
    end
    binaries.sum
  end
end
