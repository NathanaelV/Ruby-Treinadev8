# 1
class Word
  def vowels_count(phrase)
    phrase.scan(/[aeiouáéíóúâêôãõày]/i).size
  end

  def consonants_count(phrase)
    phrase.scan(/[bcdfghjklmnpqrstvwxyz]/i).size
  end
end

# 2
class Word
  def vowels_count(phrase)

    phrase = phrase.downcase.parameterize
    phrase.count("a,e,i,o,u,y")
   
end

  def consonants_count(phrase)
   phrase = phrase.downcase.squeeze
   phrase.count ("b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,z")
 
end
end


# 3
class Word
  def vowels_count(phrase)
    phrase.downcase.parameterize.count ('aeiouy')
  end

  def consonants_count(phrase)
    phrase.downcase.parameterize.count ('bcdfghjklmnpqrstvwxz')
  end
end


#4
 def vowels_count(phrase)
    phrase = phrase.downcase.unicode_normalize(:nfkd).encode('ASCII', replace: '')
    vogais = %w[a e i o u y]

    phrase.chars.count { |char| vogais.include?(char) }
  end

  def consonants_count(phrase)
    phrase = phrase.downcase
    consoantes = %w[b c d f g h j k l m n p q r s t v w x z]

    phrase.chars.count { |char| consoantes.include?(char) }
  end
end

