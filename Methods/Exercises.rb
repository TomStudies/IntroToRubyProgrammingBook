#Write a program that prints a greeting message. 
#This program should contain a method called greeting that takes a name as its parameter and returns a string.
def greeting(name)
  "Hi, #{name}"
end

puts "What is your name"
name = gets.chomp
puts greeting(name)

#What do the following expressions evaluate to?
# x = 2 : 2
#puts x = 2 : nil
#p name = "Joe" : nil (?) WRONG: This returns "Joe". p prints and returns the same argument.
#four = "four" : "four"
#print something = "nothing" : nil

#Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(x, y)
  x * y
end

puts "What numbers to multiply?"
x = gets.chomp.to_i
y = gets.chomp.to_i
puts multiply(x, y)

#What will the following code print to the screen?
=begin
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
=end
#The code will print nothing.
#To make it work:
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
#This returns nil.

#What does the following error message tell you?
=begin
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end
#It tells us that there was only one argument given to the calculate_product method. Two are required.