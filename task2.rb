class MyFirstClass
    def initialize
    end
end

class MySecondClass < MyFirstClass
    def initialize
    end
end

f = MyFirstClass.new
s = MySecondClass.new
puts f.class
puts s.class
puts f.class == MyFirstClass
puts s.class == MySecondClass
puts MySecondClass.superclass
puts MySecondClass.superclass.superclass
    
