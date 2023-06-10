random_integer = rand(10)

if random_integer > 5 then puts "BIG"
else puts "SMALL"
end

random_integers = []
10.times do
    random_integers.push(rand(10))
end
puts random_integers

a = 0
while a != 100 do
     a = a+1
end
puts a
