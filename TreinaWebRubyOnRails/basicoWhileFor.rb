#Laço while
x = 0
while (x < 10)
    puts "Valor de x: #{x}"
    x = x + 1
end
#-----------------------------------
#modificador
x = 0

begin 
    puts"valor de x: #{x}"
    x = x +1
end while x < 10
#------------------------------------
#util diferente do while executa enquanda acondição pré estabelecida for false  
x = 0
util (x >= 5) do 
    puts "Valor da variavel x: #{x}"
x = x + 1
end
#--------------
x = 0
begin
    puts "valor da variavel  x: #{x}"
    x = x + 1
end until (x >= 4)
#------------------------------------

