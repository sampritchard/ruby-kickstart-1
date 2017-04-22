# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(array)
  #array_length = the array of strings joined together and then counted. This gives me the sum of the characters.
  array_length = array.join.length
  #if the sum of characters is 1 or less than it is not a prime so this needs to be elimated otherwise will always return true
  return false if array_length <= 1
  #Math.sqrt(num) returns the square root of the sum as a float. So turn it to a integer using to_i.
  #downto(2) means we only look between 2 and the squareroot. Then loop through and return false if the sum divided by any number upto sum leaves a remainder
  Math.sqrt(array_length).to_i.downto(2).each {|i| return false if array_length % i == 0}
  #return true if not
  true
end
