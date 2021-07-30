#Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(number)
  puts "The array includes the number."
else
  puts "The array does not include the number."
end

#What will the following programs return? What is the value of arr after each?
=begin
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)
#Will return the product with 1 deleted in the first array pair
2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
=end
#Will return [["b"], ["a", [1, 2, 3]]] (Had to look this one up in solutions. Putting [Array(1..3)] seems to make it a single object.

#How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
puts arr[1][0] #Or array.last.first as evidenced in the solution

#What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]
arr.index(5) #Returns 3
#array.index[5] #Throws an error? Yes
arr[5] #Returns 8

#What is the value of a, b, and c in the following program
string = "Welcome to America!"
a = string[6] #e
b = string[11] #A
c = string[19] #nil? Correct

#You run the code in the book and get the error message in the book, what is the problem and how can it be fixed?
#They are attempting to use the word margaret as an index. It is a string and not an int.
#They could achieve the same intended effect by doing names[3] = 'jody'

#Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1]
array.each_with_index { |val, dex| puts "#{dex}. #{val}" } #Best to add 1 to dex in real world so that the list starts on 1.

#Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. 
#You should have two arrays at the end of this program, The original array and the new array you've created. 
#Print both arrays to the screen using the p method instead of puts.
newarray = []
array.each { |num| newarray << num+=2 }
p array
p newarray