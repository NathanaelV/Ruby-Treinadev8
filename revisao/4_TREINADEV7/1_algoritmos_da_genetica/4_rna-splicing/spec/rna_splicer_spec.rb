require 'spec_helper'

describe RnaSplicer do
  it 'deve remover intron da fita de RNA' do
    rna = 'GUCAGCUGCGUCUUCGGAGCUGUCAGUCUCGCUAGUGCAUGCGGUCGACU'
    intron = 'GUCAGUCUCGC'

    expect(RnaSplicer.new.splice(rna, [intron])).to eq 'GUCAGCUGCGUCUUCGGAGCUUAGUGCAUGCGGUCGACU'
  end

  it 'deve remover dois introns da fita de RNA' do
    rna = 'AAUGCAUGCAUGCUAGUGACUGAUGCAUGCAGCGCGCGCGAUAUAUUGUAUUAUGCU'
    intron = 'AUGCUAGUGA'
    other_intron = 'CGCGAUAUAUUG'

    expect(RnaSplicer.new.splice(rna, [intron, other_intron])).to eq 'AAUGCAUGCCUGAUGCAUGCAGCGCGUAUUAUGCU'
  end

  it 'deve remover conjunto de introns da fita de RNA' do
    rna = 'GGCAGUCAGCAUGAUGUCAGUGCUAGUCGGUCGAUGCGGCGCGCUUUUAUAGCGCGCGUAGCGACGUAGCUGCCGGCCGAUCGA'
    intron = 'CAUGAUGUCAGUGCU'
    other_intron = 'UUUAUAGCGC'
    another_intron = 'CGGCCGAUCGA'

    expect(RnaSplicer.new.splice(rna, [intron, other_intron, another_intron])).to eq 'GGCAGUCAGAGUCGGUCGAUGCGGCGCGCUGCGUAGCGACGUAGCUGC'
  end
end
