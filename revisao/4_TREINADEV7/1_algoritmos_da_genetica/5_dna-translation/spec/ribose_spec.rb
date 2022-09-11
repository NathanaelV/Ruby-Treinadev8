require 'spec_helper'

describe Ribosome do
  it 'deve produzir uma proteína' do
    ribosome = Ribosome.new
    rna_messenger = 'AGUGGUUAGAAACCACGG'
    expect(ribosome.translate(rna_messenger)).to eq 'aa1-aa6-aa5-aa3-aa7-aa8'
  end

  it 'deve produzir uma proteína' do
    ribosome = Ribosome.new
    rna_messenger = 'UUUCCAAAAUAGAGUUUGCCACGGCGG'
    expect(ribosome.translate(rna_messenger)).to eq 'aa4-aa7-aa3-aa5-aa1-aa2-aa7-aa8-aa8'
  end

  it 'aborta processo se RNA não codificar aminoácidos corretamente' do
    ribosome = Ribosome.new
    rna_messenger = 'UUUCCAAAAGGGUAGAGUUUGCCA'
    expect(ribosome.translate(rna_messenger)).to eq 'Translation aborted'
  end
end
