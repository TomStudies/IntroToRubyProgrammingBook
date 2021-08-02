def greet(person)
  puts "Hello, " + person
end

greet("John")
#greet(1)


def space_out_letters(person)
  return person.split("").join(" ")
end

def greet2(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet2(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)