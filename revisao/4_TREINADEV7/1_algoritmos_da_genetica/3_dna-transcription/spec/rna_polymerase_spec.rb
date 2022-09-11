require 'spec_helper'

describe RnaPolymerase do
  it 'deve gerar RNA a partir de sequência de DNA' do
    dna = File.open('spec/dna_strand.txt')
    rna_polymerase = RnaPolymerase.new
    expect(rna_polymerase.transcribe(dna.read, "TTGATGTTGGAA", "GACAACGTCGATC")).to eq 'CACCCACGGGUCAAUCGAAUUGCGCUAAGCCUGAGCUGAUGCUGUAGUCGUGAUGCUUGAUG'
  end

  it 'deve gerar RNA a partir de sequência de DNA' do
    dna = File.open('spec/dna_strand.txt')
    rna_polymerase = RnaPolymerase.new
    expect(rna_polymerase.transcribe(dna.read, 'GAGATCCTGATGC', 'TAACTGCAGTGC')).to eq 'GCGAUAGACGUACGACUAGUCGUGACUAGUCGUAG'
  end

  it 'retorna mensagem de erro se não for possível gerar RNA' do
    dna = File.open('spec/dna_strand.txt')
    rna_polymerase = RnaPolymerase.new
    expect(rna_polymerase.transcribe(dna.read, '', '')).to eq 'Sequence not found'
  end

  it 'retorna mensagem de erro se não for possível gerar RNA' do
    dna = File.open('spec/dna_strand.txt')
    rna_polymerase = RnaPolymerase.new
    expect(rna_polymerase.transcribe(dna.read, 'AAAAAAAAAAA', 'GGGGGGGGGG')).to eq 'Sequence not found'
  end
end
