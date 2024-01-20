
//Arrays em collection

estados = []
estado.push('Espirito Santo') #//para adicionar valor em um array
estado.push("Rio Grande do Sul","Minas Gerais","Rio de Janeiro","São Paulo") #// para adicionar vários valores em um array
estado.insert(0, 'acre','amapa') #// para adicionar um valor em uma posição especifica dentro de um array 
estado [4] #//chaamando o valor da posição 4
estado [4] = "Rio Grande" #// esditando o valor a posição 04
estado [1..2] #// intervalo de valores significa que ele vai pegar o valor de 1 até o 2 e irá trazer você consegue pegar valor de trás para frente também
estado.first #// vai pegar o primeiro elemento d array 
estado.last #//irá pegar o ultimo elemento d array
estado.count #// ira dizer quando elementos tem dentro de um array
estado.empty? #//aqui estamos fazendo uma pergunta se o estado esta vazio ele é booleano retorna true ou false
estado.include?('São Paulo') #//aqui estou vendo se tem dentro do meu array o valor de 'são paulo' retoena um valor booleano true ou false 
estado.delete_at(2) #//aqui estamos deletando o valor da posição 02 do nosso array
estado.pop #//aqui estamos deletando o último valor de dentro do nosso array
estado.shift #//aqui estamos deletando o primeiro valor de dentro do nosso array


    #//Manipulando collection em Hashes
#//existem duas formas de criar Hash as duas são 
    capitais = hash.new 
    capitais = {}
#// 
capitais[:minas_gerais] = "Belo Horizonte" #//aqui estamos especificando a chave e o novo valor que sera adicionado a esse Hash 
capitais.keys #//para ver todas as chaves do Hash    
capitais.values #// para mostrar todos os valores 
capitais[:santaCatarina] #// irá trazer o valor da chave correspondente do hash 
capitais.delete(:acre) #// irá deletar o valor ao deletar a chave
capitais.size  #// ira trazer a quantidade de valores dentro do Hash 
capitais.empty? #// traz um valor booleano true ou falase caso o Hash esteja vazio




