#alguns exemplos e block

#ao colocar 5.times e o valor dentro {} ele irá executar 5 vezes o que tiver dentro desse bloco.
5.times { puts "Exec the block"}

#========================================================================================

#podemos passar parametros também dentro de um bloco como no exemplo abaixo

sum = 0 
numbers = [5,10,5] #parametro
numbers.each {|number| sum += number} #number faz um laço de repetição sempre somando sum com number toda vez que ele passa adiciona um valor em sum.
puts sum 

#========================================================================================
#podemos usar block de multiplas linhas também 
foo = {2 => 3, 4 => 5}
foo.each do | key,value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts '----'
end
#========================================================================================
#meotodo que recebe um bloco como parametro
def foo
    # Call the block
    yield
    yield 
end
foo {puts "Exec the block"}
end


#aqui agente pode verificar se o bloco fo passado ou não
def foo
    if block_given?
        # Call the block
        yield
    else
        puts "Sem parâmetro do tipo bloco"
        end
    end

    foo
    foo { puts "Com parâmetro do tipo bloco"}
    
# é impoetante infatizar que só é possível passar um bloco por parâmetro

def foo(name, &block)
    @name = name
    block.Call
end
foo('Leonardo') {puts "hellow #{nmae}"}
#=======================================================================================

def foo(number,&block)
    if block_given?
        numbers.each do |key,value|
            block.call(key, value)
        end
    end
end
numbers = {2 => 2, 3 => 3, 4 => 4}

foo(numbers) do |key, value|
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
    puts "----"
end



#usando um outro exemplo 
def processar_pedidos(pedidos, &bloco)
    if block_given?
      pedidos.each do |prato, quantidade|
        bloco.call(prato, quantidade)
      end
    end
  end
  
  # Lista de pedidos em um restaurante
  pedidos_do_cliente = {"Pizza Margherita" => 2, "Sushi Misto" => 1, "Hambúrguer" => 3}
  
  # Processar os pedidos usando um bloco
  processar_pedidos(pedidos_do_cliente) do |prato, quantidade|
    preco_unitario = 15.0  # preço fictício para cada prato
    total_por_prato = preco_unitario * quantidade
  
    puts "Você pediu #{quantidade} #{prato}(s)."
    puts "O total para #{prato} é R$#{total_por_prato}."
    puts "------"
  end
  


#========================================================================================
#aqui é um exemplo de iterração no bloco:
# Lista de compras
itens = ["Maçã", "Banana", "Laranja", "Pêra"]

# Adicionando 10% de desconto a cada item
itens.each do |item|
  preco_original = 5.0  # Preço original de cada item (apenas para ilustrar)
  desconto = preco_original * 0.1
  preco_com_desconto = preco_original - desconto

  puts "Você comprou #{item} com 10% de desconto. Preço final: R$#{preco_com_desconto}"
end







#mesmos exemplos um pouco mais explicados:







5.times {puts "Exec the block"} #aqui uso essa função do ruby .time aonde coloco 5.time que seria a 
#quantidade de vezes que vai executar o que estiver dentro do block {} que seria {puts "Exec the block"}
#---------------------------------------------------------------------------------------------------------


#um bloco também pode receber parâmetros como no exemplo abaixo:
sum = 0
number = [5,10,5]
numbers.each {|number|sum += number}
puts sum
  
end
#---------------------------------------------------------------------------------------------------------

#é possivel usar um block de multiplas linhas também como no exemplo abaixo:

foo = {2 => 3, 4 => 5}

foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '------'
end
#---------------------------------------------------------------------------------------------------------

#um método que recebe um bloco como parâmetro:

def foo
  # call the block
  #se for executado ele vai trazer a mensagem "Exec the block " duas vezes porque tem dois yield sendo chamado
  #dentro do método
  yield
  yield
end

foo {puts "Exec the block"}

#---------------------------------------------------------------------------------------------------------


#o block pode ser passado opcionalmente aonde podemos verificar se o bloco foi passado ou não como no exemplo abaixo

def foo
  if block_given?
    #call the block
    yield
  else
    puts "Sem parâmetro do tipo bloco"
    end
  end
  foo #aqui é o block sem parametro que ira cair no else
  foo { puts "com parâmetro do tipo block"} #e aqui é o block com parâmetro que ira executar o que tiver dentro de {}

#---------------------------------------------------------------------------------------------------------

#existem outras formas de passar o block como parâmetro, é importante saber que pode passar um block por metodo

def foo(name, &block)
  @name = name
  block.call
end

foo('Leonardo') {puts "Hellow #{@name}"}
#---------------------------------------------------------------------------------------------------------

#podemos passar um block que ocupa varias linhas como parametro no exemplo estou passando um bloco dentro do outro


def foo (numbers, &block)
  if block_given?
    numbes.each do |key, value|
      block.call(key, value)
    end
  end
end

numbes = {2 => 2, 3 => 3, 4 => 4}
foo(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} * #{value} = #{key + value}"
  puts "----"
end
#---------------------------------------------------------------------------------------------------------



#exemplo de block com lambda
def calcular(x, y, operacao)
    operacao.call(x, y) # Chamando a operação passada como um lambda
  end
  
  # Definindo um bloco que representa a adição.
  adicao = lambda { |a, b| a + b }
  
  # Definindo um bloco que representa a multiplicação.
  multiplicacao = lambda { |a, b| a * b }
  
  # Solicitando que o usuário digite o primeiro número.
  print "Digite o primeiro número: "
  numero1 = gets.chomp.to_i
  
  # Solicitando que o usuário digite o segundo número.
  print "Digite o segundo número: "
  numero2 = gets.chomp.to_i
  
  # Exemplo de uso da calculadora com adição.
  puts "Resultado da adição: #{calcular(numero1, numero2, adicao)}"
  
  # Exemplo de uso da calculadora com multiplicação.
  puts "Resultado da multiplicação: #{calcular(numero1, numero2, multiplicacao)}"
  
