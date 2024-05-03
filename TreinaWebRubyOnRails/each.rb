# iterando
values = [1,3,4,5,6,23,13,67,87]

values.each do |n|
    puts n 
end
#------------------------------
#iterador sobre um hash
#aqui usamos o each_pair  aonde ele retorna 2 valores que no caso desse exemplo é a chave e o valor aramzenado nela

band =
{
    guitar: 'johnny',
    vocals: 'joey',
    bass: 'deedee',
    drums: 'tommy'
}

band.each_pair do |key, value|
    puts "#{value} plays #{key}"
#-----------------------------------

#um forma de impressão usando o collect aonde ele está tendendo uma dondição no bloco nesse caso 
#estamos querendo os valores pares
values = [1,2,3,4,5,6,7,8,9]
p values.collect {|n| n%2 == 0}
result = values.collect do |n|
    n%2 == 0
end
p result
# o mesmo pode ser feito usando o do 
values = [1,2,3,4,5,6,7,8,9]
result = values.collect do |n|
    n%2 == 0
end
p result

#podemos usar outro método select do ruby para selecionar os valores que atendem a essa condição
# USANDO O MESMO EXEPLO DO CÓDIGO
values = [1,2,3,4,5,6,7,8,9]
result = values.select do |n|
    n%2 == 0
end
p result
#como resultado trará os valores do array que atendem o que está sendo pedido na condição
#-------------------------------------
#aqui estou somando os valores dentro desse array
values = [1,2,3,4,5,6,7,8,9]
sum = 0 
values.each do |n|
    sum += n
end
puts "Total: #{sum}"

# outra forma de fazer isso seria dessa forma:
values = [1,2,3,4,5,6,7,8,9]
total = values.inject(0) {|sum, element| sum + element} #aqui tem um método do ruby chamado inject aonde ele injeta um valor
puts "Total: #{total}"                                  #a cada parte de elementos desse array
                                                        #passando o valor inicial de acumulador que no caso é o zero
#isso acaba deixando o código mais enxuto

values = [1,2,3,4,5,6,7,8,9] #aqui eu posso fazer a mesma coisa passando no inject o :+ incurtando ainda mais o código
total = values.inject(:+)   #estou passando a operação na iteração
puts "Total: #{total}"
#-----------------------------------------
#aqui é outro exemplo de iteração usando uma hash aonde eu tenho chave e  valor e preciso dividir cada valor dessa hash 
#por 0.2374 e cada elemento que ele passar ele fara essa divisão
total = 0
rain_data.each do |element|
    element.each_pair do |key, value|
        if key == :measure
            total += value / 0.2374
        end
    end
end
puts "valor total: #{total}"

#---------------------------------------------

#outro exemplo seria deixar o código menos verboso fazendo a mesma coisa acima com menas linhas de código
#Explicando aqui básicamente eu chamo um método collect em cima do meu array rain_data que tem dentro dele hash
#chamei meu parametro |h| para dizer que é um hash
# e como estou chamando o método colect eu estou querendo coletar uma inforação em especifica de cada um desses valores
#e a informação que eu quero é so a chave de measure e no mesmo momento fazer a divisão para armazenar dentro do array
#que é resultado dessa operação, e para somar esse valor eu uso o inject passando a operação 
# parei na aula 2 de ruby básico 44:53

total = rain_data.collect { |h| h[:measure] /0.2374}.inject(:+)
puts "valor total: #{total}"