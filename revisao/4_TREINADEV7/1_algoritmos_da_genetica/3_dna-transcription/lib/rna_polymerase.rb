class RnaPolymerase
  def transcribe(dna_read, start_strand, end_strand)
    unless dna_read.index(start_strand) || dna_read.index(end_strand)
      return 'Sequence not found'
    end
    if start_strand.empty? || end_strand == ''
      return 'Sequence not found'
    end
    inicio = dna_read.index(start_strand) + start_strand.length
    dna_read = dna_read[inicio..-1]
    fim = dna_read.index(end_strand) - 1
    translate_dna(dna_read[0..fim])
  end


  private

  def translate_dna(dna_strand)
    gene = {'A'=>'U', 'T'=>'A', 'G'=>'C', 'C'=>'G'}
    dna_strand.gsub(/\w/, gene)
  end
end