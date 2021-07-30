#Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
family = family.select { |category, names| category == :brothers || category == :sisters }
immediate_fam = family.values.flatten
p immediate_fam

#Look at Ruby's merge method. Notice that it has two versions. 
#What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
#A: merge! adds the contents of hash 2 to hash 1, while merge simply returns a combined hash of both without modifying hash 1.
bob = {name: "Bob", height: "6 ft 1", gender: "male", age: "62 yrs"}
sally = {name: "Sally", height: "4 ft 2", gender: "female", age: "11 yrs"}
puts "Merge method:"
puts bob.merge(sally)
puts bob
puts sally
puts "Merge! method:"
puts bob.merge!(sally)
puts bob
puts sally
#Apparently if they share the same key, merge methods overwrite the contents... huh.

#Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. 
#Then write a program that does the same thing except printing the values. Finally, write a program that prints both
movies = { ShawshankRedemption: 1994, InternalAffairs: 2002, CitizenKane: 1941, TheGodfather: 1972 }
movies.each_key { |name| puts name }
movies.each_value { |year| puts year }
movies.each { |name, year| puts "#{name} #{year}" }

#Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

#What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.
if person.value?('Jeff')
  puts "Jeff is in there."
else
  puts "Jeff is NOT in there."
end 

#Given the following code...
=begin
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
=end
#What is the difference between the two hashes that were created?
#A: The second one assigns a string "hello there" for the key, whereas the first one uses a symbol x.

#If you see this error, what do you suspect is the most likely problem?
#NoMethodError: undefined method `keys' for Array
#B, There is no method called keys for Array objects.