#aqui estamos adicionando conteúdo no nosso arquivo txt ao colocar o a ele não sobre escreve o que já tem
File.open('shopping-list.txt', 'a') do |line|
    line.puts('arroz')
    line.puts('feijão')
    line.puts('azeite')
    line.puts('de')
    line.puts('oliva')
end