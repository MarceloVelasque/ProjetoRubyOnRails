require_relative 'Produto'
require_relative 'Mercado'

produto = Produto.new('Pão', 2.50)

mercado = Mercado.new(produto)
mercado.comprar