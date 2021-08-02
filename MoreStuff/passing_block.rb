def take_block(&block) #& indicates block (word block could be anything)
  block.call
end

take_block { puts "block being called" }

def take_block2(number, &block)
  block.call(number)
end

number = 64
take_block2(number) { |num| puts "block being called #{num}" }
