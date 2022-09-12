a = [4, 8, 15, 16, 23, 42]

it = a.to_enum

it.each {|e| puts e}
puts it.sum
p a
p it.to_a
p it.map {|e| e ** 2}
puts

puts it.next
puts it.next
puts it.peek
puts it.peek
puts it.next
it.rewind
puts it.next
