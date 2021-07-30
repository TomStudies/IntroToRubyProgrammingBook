def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name}, I'm #{options[:age]} years old and I live in #{options[:city]}."
  end 
end

greeting("Robert")
greeting("Tom", {age: 23, city: "Williston"})
greeting("Mary", age: 34, city: "Burlington") #Curly braces not required when a hash is the last argument.