# aqui conseguimos ler um arquivo iterrando ele dentro de uma variável 
puts '--Lista de compras'
file = File.open('shopping-list.txt')

file.each do |line|
    puts line 
end