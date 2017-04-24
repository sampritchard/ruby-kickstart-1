# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(*elements)
to_return = [] #returned array for results
deleted = elements.shift #removes the first element which is given and this determines what their value should be as per instructions
#elements first element is now removed to deleted
#.each_slice(2) is saying to iterate the given block of 2 elements
#in the block, we have the two elements a and b
#the double bang returns a boolean false for false or nil or true for everything else
#"(false == false) == ("true") would push true to to_return because false == false is true!
elements.each_slice(2){ |a,b| to_return << ((!!a == !!b) == !deleted)}
to_return
end
