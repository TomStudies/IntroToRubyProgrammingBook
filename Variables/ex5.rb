#Prediction: The first example will puts 3, the second will error out because x is out of scope.

x = 0
3.times do
  x += 1
end
puts x

y = 0
3.times do
  y += 1
  z = y
end
puts z
