require 'spec_helper'

describe GeneticInheritance do
  describe 'Calcula a prorporção da prole do cruzamento de' do
    it "de Rr e Rr" do
      result = [["RR", 1/4.to_r], ["Rr", 1/2.to_r], ["rr", 1/4.to_r]]
      expect(GeneticInheritance.new.predict_proportions("Rr", "Rr")).to eq result
    end

    it "de RR e Rr" do
      result = [["RR", 1/2.to_r], ["Rr", 1/2.to_r]]
      expect(GeneticInheritance.new.predict_proportions("RR", "Rr")).to eq result
    end

    it "de Aa e AA" do
      result = [["AA", 1/2.to_r], ["Aa", 1/2.to_r]]
      expect(GeneticInheritance.new.predict_proportions("Aa", "AA")).to eq result
    end

    it "de RR e rr" do
      result = [["Rr", 1/1.to_r]]
      expect(GeneticInheritance.new.predict_proportions("RR", "rr")).to eq result
    end
  end
end
