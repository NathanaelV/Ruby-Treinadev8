class RnaSplicer
  def splice(rna, intron)
    intron.each do |i|
      rna.gsub!(i, '')
    end
    rna
  end
end
