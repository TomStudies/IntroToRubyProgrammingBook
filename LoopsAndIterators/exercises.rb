#What does the each method in the following program return after it is finished executing?
=begin
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
=end
#It returns 6? (X) It returns [1, 2, 3, 4, 5]... Each will always return the array it was called upon.

#Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
puts "Howdy, dingus"
input = gets.chomp
while input != "STOP"
  puts "Howdy, dingus"
  input = gets.chomp
end

#Write a method that counts down to zero using recursion.
def countdown(start)
  puts start
  if start > 0
    start -= 1
    countdown(start)
  end
end

puts "Count down from x?"
x = gets.chomp.to_i
countdown(x)
