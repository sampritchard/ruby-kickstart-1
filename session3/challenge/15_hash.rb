# For this problem, you will need to know how to use a linked list.
#
# A linked list is like a train, each car is connected to the car behind it. Then you just
# keep track of the engine, and you know where the whole train is. And you know when you reach
# the caboose because it's not got any more cars behind it.
#
# We'll implement our linked list with hash tables. So in a linked list, you keep track of the
# first hash in the list, usually called the head, and he points to the node after him.
# Similarly, the node after him, and every other node in the list point to the node after
# themselves, as well. Except the last node, which points to nil.
#
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
# head                                # => {:data=>2, :next=>{:data=>1, :next=>nil}}
# head = {:data => 3, :next => head}
# head                                # => {:data=>3, :next=>{:data=>2, :next=>{:data=>1, :next=>nil}}}
#
# See? Each one just points to the next one after himself. Then you can say things like:
# head[:data]                 # => 3
# head[:next][:data]          # => 2
# head[:next][:next][:data]   # => 1
#
# ===========
#
# Now that we know what a linked list is, write a function named middle, which takes a linked list,
# and returns the data halfway down the list.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# middle head                        # => 1
# head = {:data => 2, :next => head}
# middle head                        # => 1
# head = {:data => 3, :next => head}
# middle head                        # => 2
# head = {:data => 4, :next => head}
# middle head                        # => 2
# head = {:data => 5, :next => head}
# middle head                        # => 3
# head = {:data => 6, :next => head}
# middle head                        # => 3


#i find lists quite hard and they seem important for interview questions
#this logic is from the solution, I comment my understanding of it and hopefully be able to use that in the next challenges
def list_size(list) #declare the method list_size which has one parameter "list".
  return 0 unless list #returns 0 (if nothing passed in) unless a list has been passed in
  1 + list_size(list[:next]) #1+ the hash list passed in next
end

def middle(list, distance=list_size(list)/2) #a method to find the middle of said list
  return list[:data] if distance == 0 #distance is 0, it returns data as thats the first point
  middle list[:next], (distance - 1)
end
