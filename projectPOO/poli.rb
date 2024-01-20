class Instrumento
    def escrever
        puts 'Escrevendo'
    end 
end

class Teclado < Instrumento
end

class Lapis < Instrumento
    def escrever
        puts 'Escrevendo à Lapis'
    end
end

class Caneta < Instrumento
    def escrever
        puts 'Escrevendo a Caneta'
    end 
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new
puts "Lapis:"
lapis.escrever
puts "Caneta:"
caneta.escrever
puts "Teclado:"
teclado.escrever