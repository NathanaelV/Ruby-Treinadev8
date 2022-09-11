class Finder
  def index_of(lista, letra)
    resp = []
    lista.each_with_index do |l, i|
      resp << i if l.index(letra)
    end
    resp
  end
end
