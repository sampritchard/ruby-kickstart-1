# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

#&block (or anything) makes block a Proc object
def reverse_map(*p, &block) #*anything means you can call the method with any number of arguments
  p.reverse.map(&block)
end
