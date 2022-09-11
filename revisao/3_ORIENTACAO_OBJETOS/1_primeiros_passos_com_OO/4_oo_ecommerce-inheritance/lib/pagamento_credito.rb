class PagamentoCredito < Pagamento
  attr_reader :juros

  def initialize(quantidade:, juros:, produto:)
    super(quantidade: quantidade, produto: produto)
    @juros = juros
  end

  def atualizar_valor
    @valor += @valor * @juros * 0.01
  end
end
