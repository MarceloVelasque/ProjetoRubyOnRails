# O método method_missing é um método especial em Ruby que é chamado automaticamente
# quando você tenta chamar um método que não está definido em uma classe. Ele permite lidar dinamicamente
# com chamadas de métodos que não foram implementados explicitamente.
  
#Aqui estão alguns exemplos de como usar o method_missing:
#---------------------------------------------------------------------------------------------
#Exemplo básico do método method_missing:

cclass Exemplo
# Define o método method_missing que é chamado quando um método não está definido na classe
def method_missing(metodo, *args)
  # Imprime uma mensagem informando que o método não foi encontrado
  puts "Método '#{metodo}' não encontrado!"
end
end

# Cria uma instância da classe Exemplo
objeto = Exemplo.new
# Chama um método que não está definido na classe, o que aciona o method_missing
objeto.metodo_que_nao_existe

#---------------------------------------------------------------------------------------------

#Exemplo mais avançado com tratamento de métodos específicos:

class Exemplo
    # Define o método method_missing que é chamado quando um método não está definido na classe
    def method_missing(metodo, *args)
      # Verifica se o método é :saudacao
      if metodo == :saudacao
        # Imprime uma saudação com base no primeiro argumento passado
        puts "Olá, #{args.first}!"
      else
        # Chama o method_missing padrão para tratar métodos que não foram tratados especificamente
        super
      end
    end
  end
  
  # Cria uma instância da classe Exemplo
  objeto = Exemplo.new
  # Chama o método :saudacao com o argumento 'Usuário'
  objeto.saudacao('Usuário')
  # Chama um método que não está definido na classe, o que aciona o method_missing
  objeto.metodo_que_nao_existe
  #---------------------------------------------------------------------------------------------