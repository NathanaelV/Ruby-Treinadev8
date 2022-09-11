class DoubleStrand
  def complementary_strip(strand)
    gene = {'A'=>'T', 'T'=>'A', 'G'=>'C', 'C'=>'G'}
    strand.gsub(/\w/, gene)
  end
end