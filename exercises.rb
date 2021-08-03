#Exercises at the end of the Launch School Intro to Ruby book

#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
first = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
first.each { |val| puts val }

#Same as above, but only print out values greater than 5.
first.each { |val| if val > 5 then puts val end} #solution: puts val if val > 5

#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
odds = first.select { |num| num.odd? }
p odds

#Append 11 to the end of the original array. Prepend 0 to the beginning.
first.push(11)
first.unshift(0)
p first

#Get rid of 11. And append a 3.
first.pop
first.push(3)
p first

#Get rid of duplicates without specifically removing any one value.
#first.delete_if { |num| first.count(num) > 1 } Gets rid of the first 3 but not the second 3, not sure if correct
first.uniq! #Taken from solution
p first

#What's the major difference between an Array and a Hash?
#Arrays are basically lists of objects while hashes are more like dictionaries, with key-object pairs.

#Create a Hash, with one key-value pair, using both Ruby syntax styles.
movie = { TheRunningMan: 1987 }
book = Hash.new
book[:ShipOfGold] = 1987
#The solution was looking for this version hash = {:name => "bob"

#Suppose you have a hash 
h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.
puts h[:b]
#2. Add to this hash the key:value pair `{e:5}`
h.store(:e, 5)
puts h
#3. Remove all key:value pairs whose value is less than 3.5
h.delete_if { |key, val| val < 3.5 }
puts h

#Can hash values be arrays? Can you have an array of hashes? (give examples)
#Yes to both. Hashes can store arrays, and arrays can store hashes.

#Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

x = 0
contacts.each do |person, info|
  info.store(:email, contact_data[x][0])
  info.store(:address, contact_data[x][1])
  info.store(:phone, contact_data[x][2])
  x+=1
end
puts contacts #Just done by direct assignment eg contacts["Joe Smith"][:email] = contact_data[0][0] in solutions.

#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |string| string.start_with? 's' }
p arr
#Then recreate the arr and get rid of all of the strings that start with "s" or starts with "w".
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |string| string.start_with?('s','w') }
p arr

#Take the following array and turn it into a new array that consists of strings containing one word. 
#(ex. ["white snow", etc...] → ["white", "snow", etc...]. 
#Look into using Array's map and flatten methods, as well as String's split method.
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
b = a.map { |phrase| phrase.split(' ') }
b.flatten!
p b

#What will the following program output?
=begin
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
=end
#It will puts the hashes are the same since order does not matter for hashes and all data types match

#Challenge: In exercise 11, we manually set the contacts hash values one by one. 
#Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. 
#Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.
#Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
#contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
#contacts = {"Joe Smith" => {}}
#As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

#...I think I already did this.
#Oh, after checking the solution, they did it somewhat differently. I will try to imitate roughly what I saw on my own.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]
x = 0
contacts.each do |contact, info|
  y = 0
  fields.each do |field|
    info[field] = contact_data[x][y]
    y+=1
  end
x+=1
end

p contacts #Not as efficient as the one on launch school. In reading the documentation for each_with_index I become pretty confused. I will look into it further.