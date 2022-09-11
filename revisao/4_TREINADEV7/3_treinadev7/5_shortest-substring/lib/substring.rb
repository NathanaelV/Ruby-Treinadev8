class Substring
  def find(string, target)
    maior = menor = 0
    primeira_string = string
    segunda_string = string.reverse
    primeiro_comprimento = segundo_comprimento = string.length + 1
    
    # Testa o resultado até entregar a menor possíbilida
    while primeira_string.length != primeiro_comprimento
      [0,1].each do |n|
        primeiro_comprimento = primeira_string.length

        target.each_char.with_index do |ch, i|
          if i == 0
            menor = maior = primeira_string.index(ch)
          else
            if primeira_string.index(ch) > maior
              maior = primeira_string.index(ch)
            elsif primeira_string.index(ch) < menor
              menor = primeira_string.index(ch)
            end
          end
        end
        primeira_string = primeira_string[menor..maior].reverse
      end
    end
    primeira_string

    # Teste o resultado porém começando pelo lado reverso
    while segunda_string.length != segundo_comprimento
      [0,1,2].each do |n|
        segundo_comprimento = segunda_string.length

        target.each_char.with_index do |ch, i|
          if i == 0
            menor = maior = segunda_string.index(ch)
          else
            if segunda_string.index(ch) > maior
              maior = segunda_string.index(ch)
            elsif segunda_string.index(ch) < menor
              menor = segunda_string.index(ch)
            end
          end
        end
        segunda_string = segunda_string[menor..maior].reverse
      end
    end

    if primeira_string.length <= segunda_string.length
      string_resposta = primeira_string
    else
      string_resposta = segunda_string
    end
    string_resposta
  end
end
