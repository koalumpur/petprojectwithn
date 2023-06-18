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

class MySecondClass < MyFirstClass
  private
  
  def var= (number)
    @var = number*2
    puts @var
  end
  
end

puts MySecondClass.superclass
puts MySecondClass.superclass.superclass

f = MyFirstClass.new(1)
s = MySecondClass.new(2)
puts f.class
puts s.class
    
puts f.class == MyFirstClass
puts s.class == MySecondClass

inst = MyFirstClass.new(3)
puts inst.class
puts inst.var
puts inst.var = 4
        
inst2 = MySecondClass.new(5)
puts inst2.class
puts inst2.var
#puts inst2.var = 6
inst2.send(:var=, 6)

