require 'spec_helper'

describe MutationCounter do
  it 'deve contar as mutações e retornar: 5' do
    one_strand =   'ATGAGATCCATGCCTTAATAC'
    other_strand = 'ATTAGATGCATCTCTTAGTAC'

    expect(MutationCounter.new.calculate([[one_strand, other_strand]])).to eq 5
  end

  it 'deve contar as mutações e retornar o maior: 6' do
    first_pair = ['ATGAGATCCATGCCTTAATAC', 'ATTAGATGCATCTCTTAGTAC']
    second_pair = ['GCTACGCTTACGGGTATATC', 'GGTACGTTTAGGGATATGTG']

    expect(MutationCounter.new.calculate([first_pair, second_pair])).to eq 6
  end

  it 'deve contar as mutações e retornar o maior: 9' do
    first = ['ATGAGATCCATGCCTTAATAC', 'ATGAGATCCATGCCTTAATAC']
    second = ['GCTACGCTTACGGGTATATC', 'GGTACGTTTAGGGATATGTG']
    third = ['TTTCAGCTAAGCGCTCGCGACTAGCTAT', 'ATACAGTTAAGAGCTCGGATCTAGCGAG']

    expect(MutationCounter.new.calculate([first, second, third])).to eq 9
  end
end
