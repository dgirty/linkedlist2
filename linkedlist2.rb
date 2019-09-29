class LinkedList2Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

node1 = LinkedList2Node.new(37)
node2 = LinkedList2Node.new(99, node1)
node3 = LinkedList2Node.new(12, node2)

def reverse_list(list, previous_node=nil)
   
  rev_node = list.next_node
      list.next_node = previous_node
      if rev_node
        reverse_list(rev_node, list)
      else
         list
      end     
  end

def print_values (list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values (list_node.next_node)
   else
     print "nil\n"
    return
  end
end

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)