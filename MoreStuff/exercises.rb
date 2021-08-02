#Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
def has_a_lab(word)
  if word =~ /lab/
    puts word
  end
end

has_a_lab("laboratory")
has_a_lab("experiment")
has_a_lab("Pans Labyrinth")
has_a_lab("elaborate")
has_a_lab("polar bear")

#What will the following program print to the screen? What will it return?
=begin
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
=end
#Hello from inside the execute method! Wrong. Returns nothing since it is missing .call. Also it returns a Proc. Test in IRB.

#What is exception handling and what problem does it solve?
#Exception handling is the practice of using the rescue keyword to allow errors to happen (possibly with an error message) but still let the code keep running.

#Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#Why does the following code give us the following error when we run it?
=begin
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end
#Because the method as written does not have an &, so it does not know to look for a block as a parameter.