class Pagamento
  attr_accessor :quantidade, :produto, :preco, :valor

  def initialize(quantidade:, produto: Produto.new)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @produto.remove_estoque(@quantidade)
    @valor = @quantidade * @produto.preco
  end

  def aplicar_desconto(desconto)
    @valor -= @valor * desconto / 100.0 
  end
end
