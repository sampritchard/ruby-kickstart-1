# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  to_return = "" #was tring this as an array [] rather than a string? This is creating an empty string for the new one to go in
  #"each_char" is paassing each character from a string to the given block. "with_index" iterates over all indexes in the block.
  #In the block character and index are the parameters passed in and when on an even index, the character is passed to the new string to_return
  each_char.with_index {|character, index| to_return << character if index.even?} 
  return to_return #don't need to put "return"
end
end
