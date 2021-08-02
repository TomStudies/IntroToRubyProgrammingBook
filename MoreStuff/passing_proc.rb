def take_proc(proc) #& indicates block (word block could be anything)
  [1, 2, 3, 4, 5].each do |number|
  proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc called in the method"
end

take_proc(proc)

def take_block2(number, &block)
  block.call(number)
end

number = 64
take_block2(number) { |num| puts "block being called #{num}" }
