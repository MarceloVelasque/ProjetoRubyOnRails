class User
    @@user_count = 0 
    deff add(nome)
    puts "User #{nome} adicionado"
    @@user_count += 1
    puts @@user_count
    end 
end

first_user = User.new
first_user.add('João')

second_user = User.new
second_user.add('Mario')

second_user = User.new 
second_user.add('Jose')


