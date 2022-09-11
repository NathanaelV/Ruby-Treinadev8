class Word
  def vowels_count(phrase)
    phrase.parameterize.count('aeiouy')
  end

  def consonants_count(phrase)
    phrase.parameterize.count('bcdfghjklmnpqrstvxwz')
  end
end
