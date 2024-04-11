# O uso da palavra-chave self em Ruby é bastante versátil e pode ser encontrado em diferentes contextos.
#seria como se fosse o this em java 
#Exemplos:
#---------------------------------------------------------------------------------------------------

#Acessando métodos de instância dentro da própria classe:
#Neste exemplo, self.nome é usado para acessar o método nome dentro da própria classe Pessoa.
class Pessoa
    attr_accessor :nome
  
    def initialize(nome)
      @nome = nome
    end
  
    def saudacao
      "Olá, meu nome é #{self.nome}"  # Acessando o método nome usando self
    end
  end
  
  pessoa = Pessoa.new('João')
  puts pessoa.saudacao

  #agora comparando com java que é o que eu programo hoje, estou associado para melhor entendimento desconsidere esse código abaixo:
#   public class Pessoa {
#   private String nome;

#   public Pessoa(String nome) {
#     this.nome = nome;
#   }

#   public String saudacao() {
#     return "Olá, meu nome é " + this.nome;  // Acessando o atributo nome usando this
#   }

#   public static void main(String[] args) {
#     Pessoa pessoa = new Pessoa("João");
#     System.out.println(pessoa.saudacao());
#   }
# }

  
  #---------------------------------------------------------------------------------------------------

  #Referenciando o próprio objeto em métodos de classe:
  #Aqui, self é usado para definir métodos de classe (self.soma e self.subtracao),
  # que podem ser chamados diretamente na classe sem precisar criar uma instância.

  class Calculadora
    def self.soma(a, b)
      a + b
    end
  
    def self.subtracao(a, b)
      a - b
    end
  end
  
  puts Calculadora.soma(5, 3)
  puts Calculadora.subtracao(10, 7)


#agora comparando com java que é o que eu programo hoje, estou associado para melhor entendimento desconsidere esse código abaixo:

# public class Pessoa {

#   public class Calculadora {
#   public static int soma(int a, int b) {
#     return a + b;
#   }

#   public static int subtracao(int a, int b) {
#     return a - b;
#   }

#   public static void main(String[] args) {
#     System.out.println(Calculadora.soma(5, 3));
#   }
# }



  #---------------------------------------------------------------------------------------------------

  #Definindo e acessando variáveis de classe:
  #Neste caso, self.total_pessoas é usado para acessar a variável de classe @@total_pessoas dentro da classe Pessoa.

  class Pessoa
    @@total_pessoas = 0
  
    def initialize(nome)
      @nome = nome
      @@total_pessoas += 1
    end
  
    def self.total_pessoas
      @@total_pessoas
    end
  end
  
  joao = Pessoa.new('João')
  maria = Pessoa.new('Maria')
  
  puts "Total de pessoas: #{Pessoa.total_pessoas}"  # Usando self para acessar a variável de classe
  #---------------------------------------------------------------------------------------------------
  
  #Dentro de blocos class << self:
  #Este exemplo mostra como usar self dentro de um bloco class << self para definir métodos de classe diretamente.

  class Pessoa
    class << self
      def saudacao
        "Olá, eu sou uma pessoa!"
      end
    end
  end
  
  puts Pessoa.saudacao  # Chama o método saudacao usando self dentro do bloco class << self
  