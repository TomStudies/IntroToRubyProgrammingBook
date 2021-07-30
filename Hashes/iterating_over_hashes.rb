person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each { |key, val| puts "Bob's #{key} is #{val}" }