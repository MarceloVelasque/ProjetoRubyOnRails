#Time  
# a classe Time é usada para representar datas e horários
#Exemplos:
#criando a classe time aqui estou chamando minha instancia de current_time más pode ser o nome que quiser
current_time = Time.new
puts current_time
#------------------------------------------------------------------------------------------------

#Criando um objeto Time representando uma data específica:
specific_time = Time.new(2023, 12, 25, 10, 30, 0)  # ano, mês, dia, hora, minuto, segundo
puts specific_time

#------------------------------------------------------------------------------------------------

#Formatando objetos Time em strings:
puts current_time.strftime("%Y-%m-%d %H:%M:%S")  # Formato: ano-mês-dia hora:minuto:segundo
puts specific_time.strftime("%A, %d de %B de %Y às %H:%M:%S")  # Formato personalizado

#------------------------------------------------------------------------------------------------

#chamando  seja o ano o mês o dia hora etc
puts "Ano: #{current_time.year}"
puts "Mês: #{current_time.month}"
puts "Dia: #{current_time.day}"
puts "Hora: #{current_time.hour}"
puts "Minuto: #{current_time.min}"
puts "Segundo: #{current_time.sec}"


#------------------------------------------------------------------------------------------------

# Comparando a diferença em dias entre dois objetos Time:
require 'date'

# Criando dois objetos Time
data_inicio = Time.new(2024, 3, 15)
data_fim = Time.new(2024, 3, 20)

# Calculando a diferença em dias entre as duas datas
diferenca_em_segundos = data_fim - data_inicio
diferenca_em_dias = (diferenca_em_segundos / (24 * 60 * 60)).to_i

puts "A diferença entre as datas é de #{diferenca_em_dias} dias."
#------------------------------------------------------------------------------------------------

#comparando dois objetos times diferentes

# Criando dois objetos Time
data_um = Time.new(2024, 3, 15)
data_dois = Time.new(2024, 3, 20)

# Comparando as duas datas
if data_um > data_dois
  puts "A data um é posterior à data dois."
elsif data_um < data_dois
  puts "A data um é anterior à data dois."
else
  puts "As datas são iguais."
end

# No primeiro exemplo, calculamos a diferença em dias entre duas datas usando a diferença em segundos entre os objetos Time
#  e convertendo essa diferença para dias. Já no segundo exemplo, comparamos diretamente dois objetos Time para determinar qual data é posterior,
#   anterior ou se são iguais. Note que a classe Date é necessária para fazer a conversão de segundos para dias no primeiro exemplo.

#------------------------------------------------------------------------------------------------