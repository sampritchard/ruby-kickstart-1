# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(a) #no idea why thisis not working #wasn't calling the method got_three?
  #iterating over each index and using the .any? method (which returns true as long as the block is not false or nil)
  #so when a[index 1] is the same as index 2 AND index 3, the block is true and the any? method returns true.
  #if not it will return false.
  a.each_index.any? {|i| a[i] == a[i+1] && a[i+1] == a[i+2]}
end
