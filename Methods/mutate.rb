a = [1, 2, 3]

#Example of a method that mutates its argument permanently
def mutate(array)
  array.pop
end

puts "Before mutate method: #{a}"
mutate(a)
puts "Ater mutate method: #{a}"
#p instead of puts keeps the quotation marks

#does not mutate the caller but returns the same value
b = [1, 2, 3]

def no_mutate(array)
  array.last
end

puts "Before non-mutation: #{b}"
no_mutate(b)
puts "After non-mutation: #{b}"