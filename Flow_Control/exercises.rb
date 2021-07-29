#Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.
=begin
(32 * 4) >= 129 : false
false != !true : false
true == 4 : false
false == (847 == '874') : true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false : true
=end

#Write a method that takes a string as an argument. 
#The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. 
#Example: change "hello world" to "HELLO WORLD".
puts "GIVE STRING"
line = gets.chomp

def toUp(line)
  if line.size >= 10
    line.upcase
  else
    "what am I supposed to do with that very short string?"
  end
end

puts toUp(line)

#Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
puts "GIVE NUMBER BETWEEN 0 AND 100"
num = gets.chomp.to_i

if (num >= 0) && (num <= 50)
  puts "number is between 0 and 50."
elsif (num >= 51) && (num <= 100)
  puts "number is between 51 and 100."
else
  puts "number is either below 0 or over 100. Ergo out of range."
end

#What will the blocks of code in the book print to the screen?
#FALSE
#Did you get it right?
#Alright now!

#5. You need another end at the end of the if else statement

#Write down whether the following expressions return true or false or raise an error. Then, type the expressions into irb to see the results.
=begin
(32 * 4) >= "129" : false (X) It actually raises an error.
847 == '874' : false
'847' < '846' : false
'847' > '846' : true
'847' > '8478' : false
'847' < '8478' : true
=end