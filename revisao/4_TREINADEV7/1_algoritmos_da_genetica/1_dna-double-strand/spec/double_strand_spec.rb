require 'spec_helper'

describe DoubleStrand do
  it 'deve montar a fita complementar de ATGAGTAGTAGTC'do
    dna = DoubleStrand.new
    expect(dna.complementary_strip('ATGAGTAGTAGTC')).to eq 'TACTCATCATCAG'
  end

  it 'deve montar a fita complementar de GCTCGTAGCCGAGA'do
    dna = DoubleStrand.new
    expect(dna.complementary_strip('GCTCGTAGCCGAGA')).to eq 'CGAGCATCGGCTCT'
  end

  it 'deve montar a fita complementar de TAGCTACGATCACGATCAGCACTAGCCTAGAGCACTA'do
    dna = DoubleStrand.new
    expect(dna.complementary_strip('TAGCTACGATCACGATCAGCACTAGCCTAGAGCACTA')).to eq 'ATCGATGCTAGTGCTAGTCGTGATCGGATCTCGTGAT'
  end
end
