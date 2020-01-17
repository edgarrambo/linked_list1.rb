class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        if  value == nil
        	puts 'Nil value (Nothing else to push)'
        	return
    end
newData = @data ? LinkedListNode.new(value, @data) : LinkedListNode.new(value)
@data = newData

end 
    def pop
 last_pushed = LinkedListNode.new(@data.value, @data.next_node)
@data = last_pushed.next_node
return last_pushed
    end
end

def reverse_list(list)
stack = Stack.new
while list
	next_node = list.next_node
	stack.push(list.value)
	list = next_node
end
return stack.data
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)



print_values(node3)


puts "-------"

revlist = reverse_list(node3)

print_values(revlist)