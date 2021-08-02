names = ["bob", "Joe", "Sara", nil, "Ocho"]

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

#One line example
zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Arr, ye can't do that matey"
puts "After each call"

#Pre-existing error example
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end 
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)