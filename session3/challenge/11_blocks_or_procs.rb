# Write a method that initializes an Array
# it receives one parameter, which is 5 by default, but can be overridden by the user
# The parameter determines the size of the Array to initialize
#
# If a block is submitted, use that block to initialize each index in the Array (pass it the current index)
#
# If a block is not submitted, initialize the Array to 100 times the array's index, as a String
#
# CONDITIONS:
#   Do not loop through the Array to initialize it, instead, use the block form
#
# HINTS:
#   Remember that the Array initializer will pass the index being initialized to your block that is doing the initializing
#   (if you wish to use blocks) Remember that in the block you pass, to Array.new, you can yield to the block the user passed
#   (if you wish to use procs)  You can place the block you received into the block spot with the ampersand ( ampersand to get it out, and to put it in )
#
# EXAMPLES:
#
# array_init(2) { |i| i.to_s }    # => ['0', '1']
# array_init { |i| i.to_s }       # => ['0', '1', '2', '3', '4']
# array_init 2                    # => ['0', '100']
# array_init                      # => ['0', '100', '200', '300', '400']
# array_init { 'hi }              # => ['hi', 'hi', 'hi', 'hi', 'hi']
# array_init 10 do |i|            # => [0, -5, 400, -15, 800, -25, 1200, -35, 1600, -45]
#   if i % 2 == 0
#     i * 200
#   else
#     i * -5
#   end
# end


def array_init(default = 5, &block)#sets default parameter as 5. Need the block in there when called upon
  #if a block is submitted
  if block
    #create a new Array called array which gets passed default value (either 5 or user input)
    #then iterate that and call the block on each element in that array
    array = Array.new(default) {|i| block.call i}
    #if a block is not submitted
  else
    #passed a default value
    array = Array.new(default)
    #this array the arrays index needs to be times by 100 and returned as a string upto the default or user
    array.each_with_index {|n,i| array[i] = (i*100).to_s}
  end
  array
end
