class LinkedListNode
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
  end
  
  class Stack
    attr_reader :data
  
    def initialize
      @data = nil
    end
  
    def push(value)
      @data = LinkedListNode.new(value, @data)
    end
  
    def push
      return print "nil\n" if @data.nil?
      print "#{@data.value}\n"
      @data = @data.next_node
    end
  
  end
  
  def reverse_list(list)
    stack = Stack.new
    while list
      stack.push(list.value)
      list = list.next_node
    end
  
    return stack.data
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
  
  node1 = LinkedListNode.new(6)
  node2 = LinkedListNode.new(12, node1)
  node3 = LinkedListNode.new(74, node2)
  node4 = LinkedListNode.new(20, node3)
  node5 = LinkedListNode.new(79, node4)
  
  print_values(node5)
  puts "---------"
  revlist = reverse_list(node5)
  print_values(revlist)