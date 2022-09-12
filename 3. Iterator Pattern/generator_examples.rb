generator = Enumerator.new do |yielder|
    x = 1
    yielder << x
    x *= 3
    yielder << x
    x += 5
    yielder << x
end

pow2 = Enumerator.new do |yielder|
    n = 1
    loop do
        yielder << n
        n *= 2
    end
end

puts generator.next
puts generator.next
generator.rewind
puts generator.next

p pow2.take 100

