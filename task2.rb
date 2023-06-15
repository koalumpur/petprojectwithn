class MyFirstClass
    def initialize
    end
end

class MySecondClass < MyFirstClass
end

f = MyFirstClass.new
s = MySecondClass.new
puts f.class
puts s.class
    
    puts f.class == MyFirstClass
    puts s.class == MySecondClass
    puts MySecondClass.superclass
    puts MySecondClass.superclass.superclass
    
    class MyFirstClass
        def initialize(a)
            @var = a
        end
        
        def var
            @var
        end
        
        def var=(number)
            @var = number
        end
    end
    
    inst = MyFirstClass.new(3)
    puts inst.class
    puts inst.var
    puts inst.var=(5)
        
        inst2 = MySecondClass.new(2)
        puts inst2.class
        puts inst2.var
        puts inst2.var=(4)
        
