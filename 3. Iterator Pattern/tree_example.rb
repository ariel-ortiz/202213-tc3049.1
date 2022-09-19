t = ['A',
     ['B',
      ['D', nil, nil],
      ['E', nil, nil]],
     ['C',
      nil,
      ['F',
       ['G', nil, nil],
       ['H', nil, nil]]]]

def inorder_aux(tree, yielder)
  return if tree.nil?
  inorder_aux(tree[1], yielder)
  yielder << tree[0]
  inorder_aux(tree[2], yielder)
end

def inorder(tree)
  Enumerator.new do |yielder|
    inorder_aux(tree, yielder)
  end
end

def levelorder(tree)
  Enumerator.new do |yielder|
    queue = [tree]
    while !queue.empty?
      current = queue.shift
      if current
        yielder << current[0]
        queue << current[1]
        queue << current[2]
      end
    end
  end
end

g = inorder(t)

p g.to_a

g = levelorder(t)

p g.to_a

