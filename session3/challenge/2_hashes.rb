# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)
  to_return = {} #this will return a hash

    1.upto n do |size| #starting at 1 in the array and going upto n; iterate over 'size'
    #(1..n).to_a do |size|
    next if size.even? #next if is skipping past the odd numbers in the array
      all = Array.new(size) {|i| i + 1} #creating a new array called all where elements are iterated over and added
      evens = all.select {|i| i.even?} #selects all even values in the new array called 'all'
      to_return[size] = evens 
    end
   to_return
end
