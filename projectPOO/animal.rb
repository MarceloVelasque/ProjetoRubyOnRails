class Animal:limit 
    def pular 
        puts 'Toing! Toing Toing' 
    end

    def dormir 
        putz 'ZZzzz'
    end
end

class Cachorro < Animal
    def latir
        puts 'au au'
    end
end

class Gato < Animal
def meow
    puts 'meaw meaw'
end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
