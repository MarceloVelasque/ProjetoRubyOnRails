#aqui vamos fazer uma chamada web através de um arquivo get o caminho do site acessando ele .
#ele baixa um arquivo html para assim executarmos

require 'net/http'

example = Net:: HTTP.get('exemple.com', '/index.html')

File.open('example.html', 'w') do |line|
    line.puts(exemple)
end