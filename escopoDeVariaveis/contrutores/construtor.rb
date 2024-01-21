#aqui tenho uma classe chamada Person, dentro dela tenho o método do ruby chamado initialize que recebe como parametro as variaveis name e age 
#que vão ser atribuidas em @name e @age  seria mesma coisa que criar um construtor em java, ao instanciar essa minha classe Person eu já 
#atribuo os valores.
class Person 
    def def initialize(name, age)
      @name = name
      @age = age
    end

    def check 
        puts "Instância da classe inciada com os valores:"
        puts "Name = #{@name}"
        puts "idade = #{age}"
    end
end

person = Person.new('João', 12)
person.check



#comparado com java seria isso:
=begin

public class Person {
    private String name;
    private int age;

    // Construtor em Java
    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // Método check em Java
    public void check() {
        System.out.println("Instância da classe iniciada com os valores:");
        System.out.println("Name = " + name);
        System.out.println("Idade = " + age);
    }

    public static void main(String[] args) {
        Person person = new Person("João", 12);
        person.check();
    }
}

=end

