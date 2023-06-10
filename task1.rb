random_integer = rand(10)

if random_integer > 5 then puts "BIG"
else puts "SMALL"
end

random_integers = []
10.times do
    random_integers.push(rand(10))
end
puts random_integers
