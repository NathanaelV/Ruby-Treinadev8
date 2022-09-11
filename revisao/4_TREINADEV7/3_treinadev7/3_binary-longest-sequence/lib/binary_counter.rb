class BinaryCounter
  def read(string)
    resp = []
    maior = count = 0
    arr = string.split('-').map { |n| n.to_i }
    arr.map! { |n| n.to_s(2) }

    arr.each do |seq|
      maior = count = 0
      seq.each_char do |ch|
        if ch == seq[-1]
          count += 1
          if count > maior
            maior = count
          end
        else
          count = 0
        end
      end
      resp << maior.to_s
    end
    resp.join
  end
end
