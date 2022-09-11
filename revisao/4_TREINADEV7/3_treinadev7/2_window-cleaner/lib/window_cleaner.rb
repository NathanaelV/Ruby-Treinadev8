class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    coordinates = coordinates.split("\n")
    count = 0

    coordinates.each do |coordinate|
      altura = Array(0..(levels-1))
      largura = Array(0..(windows_per_level-1))
      coordinate.each_char do |janela|
        if janela == 'B'
          div = altura.length / 2
          altura = altura[0..(div-1)]
        elsif janela == 'T'
          div = altura.length / 2
          altura = altura[div..-1]
        elsif janela == 'E'
          div = largura.length / 2
          largura = largura[0..(div-1)]
        else
          div = largura.length / 2
          largura = largura[div..-1]
        end
      end
      
      if (altura + largura).sum.even?
        count += 1
      end
      
    end
    count
  end
end
