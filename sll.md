
## Data structures with Ruby - Linked list

A linked list is a way to store a collection of elements. Like an array these can be character or integers. Each element in a linked list is stored in the form of a node. A node is a collection of two sub-elements or parts. A data part that stores the element and a next part that stores the link to the next node.

<p align="center">
<img src="images/classes2-img4.png" width="200"> <br>
</p>

A linked list is formed when many such nodes are linked together to form a chain. Each node points to the next node present in the order. The first node is always used as a reference to traverse the list and is called HEAD. The last node points to NULL.

<p align="center">
<img src="images/classes2-img5.png" width="600"> <br>
</p>

```ruby
# Full list and methods
class LinkedList
    attr_accessor :head, :tail, :size 
  
    def initialize
      @head = nil
      @tail = nil
      @size = 0
    end
  
    # this append values to the end of the SLL
    def append(value)
      node = Node.new(value)
      @size += 1
  
      if @head.nil?
        @head = node
      else
        @tail.next_node = node
      end
  
      @tail = node
    end
  
    # Adds a new node to the start of the list.
    def prepend(value)
      node = Node.new(value)
      @size += 1
  
      if @head.nil?
        @tail = node
      else
        node.next_node = @head
      end
  
      @head = node
    end
  
    # Returns the node at the given index.
    def at(index)
        travel = @head
        if index <= @size
            0.upto(index - 1) do |i|
                travel = travel.next_node
            end
            
            return travel
        else
            return nil
        end
    end

  
    # Inserts the data at the given index.
    def insert_at(index, value)
        newNode = Node.new(value)
        
        travel = @head
        trail = nil
        if index <= @size
            0.upto(index - 1) do |i|
                trail = travel
                travel = travel.next_node
            end
            trail.next_node = newNode
            newNode.next_node = travel
            @size += 1
        end
    end
  
    # Removes the data at the given index.
    def remove_at(index)
        travel = @head
        trail = nil
        if index <= @size
            0.upto(index - 1) do |i|
                trail = travel
                travel = travel.next_node
            end
            trail.next_node = travel.next_node
            @size -= 1
        end
        
    end
  
    # Removes and returns the last element from the list.
    def pop
        if @tail != nil
            old_tail = @tail

            new_tail = at(@size - 2)
            new_tail.next_node = nil

            @tail = new_tail
            @size -= 1

            return old_tail
        end
    end
   
    # Returns true if the passed in value is in the list.
    def contains?(value)
        contains = false
        travel = @head
        while(travel != nil)
           if(travel.value == value)
            contains = true
           end
           travel = travel.next_node
        end
        return contains
    end
  
    # Returns the index of the node containing data, or nil if not found.
  
    def find(data)
        index = nil
        travel = @head
        0.upto(@size - 1) do |i|
            if(travel.value == data)
                index = i
            end
            travel = travel.next_node
        end
        return index
    end
    #overload display
    def to_s
      string = ''
      
      current_node = @head
      while(current_node != nil)
        string << current_node.value.to_s
        string << '->'
        current_node = current_node.next_node
      end
      string << 'nil'
      string
    end
  end
```

```ruby
# Node structure.
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end
```

```ruby
list = LinkedList.new

list.append(3)
list.append(5)
list.append(6)
list.prepend(1)
list.append(9)

puts list
p list.head
p list.tail

p list.at(3)
p list.contains?(9)
p list.find(9)
p list.find(10)

p list.size
p list.tail
p list.pop

p list.size
p list.tail
p list.pop

puts list
list.insert_at(2, 7)
puts list

list.insert_at(1, 11)
puts list

list.remove_at(1)
puts list

list.remove_at(2)
puts list
```
