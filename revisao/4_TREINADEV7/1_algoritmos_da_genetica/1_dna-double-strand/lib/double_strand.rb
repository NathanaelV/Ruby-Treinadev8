class DoubleStrand
  def complementary_strip(strand)
    strand.tr('ATGC', 'TACG')
  end
end
