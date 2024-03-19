# lambda são muito similares aos blocks, más podem ser salvas em variáveis para serem reutilizadas
#---------------------------------------------------------------------------------------------------------

first_lambda = lambda { puts "my first lambda"} #a diferença do lambda para um block é que temos que chamar o lambda antes do block como no exemplo a cima
first_lambda.call #aqui com o call é executado firt_lambda que recebeu esse valor do lambda
#ou seja aqui estou armazenando um lambda dentro de uma variavel, diferente do block que não consegue ser armazenado detro de uma variavel

#---------------------------------------------------------------------------------------------------------

#existe outra sintacse um pouco mais agradavel que ao invés de colocar lambda você pode só colocar o simbolo ->
#seria o mesmo que a função acima tendo a diferença do uso da escrita lambda e  -> que se tratam da mesma coisa
first_lambda = -> {puts "my first lambda"}
first_lambda.call
#---------------------------------------------------------------------------------------------------------

#Uma lambda também pode receber parâmetros para sua execução

first_lambda = -> (names) {names.each {|name |puts name}} #aqui é um lambda aonde recebe um parametro e recebe um block
names = ["joão", "maria", "pedro"] #aqui é passado para names um array com os nomes
firt_lambda.call(names) #aqui é lido o names que foi passado como parâmetro
#---------------------------------------------------------------------------------------------------------

#também é possível ter um lambda de multiplas linhas 

my_lambda = lambda do |numbers|
index = 0
puts 'Número atual + Próximo número'
number.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{number[index]}) + (#{number[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
end
end
numbers = [1, 2, 3, 4]

