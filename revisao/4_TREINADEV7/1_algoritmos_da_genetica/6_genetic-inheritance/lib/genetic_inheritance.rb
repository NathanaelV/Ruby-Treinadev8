class GeneticInheritance
  def predict_proportions(gene_1, gene_2)
    gene_1 = gene_1.chars
    gene_2 = gene_2.chars
    combina = gene_1.product(gene_2).map do |arr|
      gene = arr.sort.join
    end
    
    resp = combina.map do |gene|
      num = combina.count(gene)
      gene = [ gene, (num/4.0).to_r ]
    end

    resp.uniq
  end
end
