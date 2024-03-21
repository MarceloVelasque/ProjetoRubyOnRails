class Foo 
    def call_private
        bar 
    end
    private
    
    def bar 
        puts "private method"
    end
end

foo = Foo.new

foo.call_private

#comparado com java seria isso: 

# public class Foo {
#     public void callPrivate() {
#         bar();
#     }

#     private void bar() {
#         System.out.println("private method");
#     }

#     public static void main(String[] args) {
#         Foo foo = new Foo();
#         foo.callPrivate();
#     }
# }
