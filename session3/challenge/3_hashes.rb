# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(string)
  #if the 0 was 1, default value would be 1 and all numbers would be 1extra
  frequency = Hash.new(0)#creates a new hash and gives the default value 0
  #splits the string into individual words
  words = string.split(" ")
  #iterate over each value, puts w downcase so all words the same and increments if found again
  words.each {|w| frequency[w.downcase] +=1}
  return frequency
end
