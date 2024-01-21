#Atributos(ou variáveis de  instância ) no ruby são sempre privados e começam com @, eles só podem ser alterados pelos métodos de um objeto.
#nada mais é do que criar um getter e um setters em uma variaveél que no caso é @name e poderá mostrar e receber um valor 
class Dog
    def name
        @name
    end
    
    def name = name
        @name = name
    end
end

dog= Dog.new
dog.name = 'Marcelo'
puts dog.name

#aqui seria uma maneira simplificada defazer a mesma coisa que no código a cima ainda consigo adicionar mais variavéis que poderão receber atributos
# como se eu estivesse criando um getters e setters dos variavéis name e age ou seja podera receber e atribuir um valor
class Dog
    attr_accessor :name, :age 
end

dog = Dog.new
dog.name = 'Marlon'
puts dog.name

dog.age = '1 ano'
puts dog.age


# em java seria algo como :

=begin 
public class Dog {
    private String name;
    private String age;

    // Getter para 'name'
    public String getName() {
        return name;
    }

    // Setter para 'name'
    public void setName(String name) {
        this.name = name;
    }

    // Getter para 'age'
    public String getAge() {
        return age;
    }

    // Setter para 'age'
    public void setAge(String age) {
        this.age = age;
    }
}

public class Main {
    public static void main(String[] args) {
        Dog dog = new Dog();

        // Usando o setter para 'name'
        dog.setName("Marlon");

        // Usando o getter para 'name'
        System.out.println(dog.getName());

        // Usando o setter para 'age'
        dog.setAge("1 ano");

        // Usando o getter para 'age'
        System.out.println(dog.getAge());
    }
}


=end