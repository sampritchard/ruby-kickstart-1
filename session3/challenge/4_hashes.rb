# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

def first_pos(string)
  words = {} #create an empty hash; why not use Hash.new? Hash.new() creates a default value, don't want that here. {} is nil
    #each_with_index takes each value from array along with their index
    string.split.each_with_index do |word, index|
    #pass in word to words hash using []
    #||= means if words[words] is false/nil then the index is taking into words meaning. So if it is the second "the" it will
    #not be added into words go through to the next index 
    words[word] ||= index
  end
  return words
end
