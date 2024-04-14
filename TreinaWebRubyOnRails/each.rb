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

