require './lib/node.rb'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(new_value)
    if @head == nil
      @head = Node.new(new_value)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(new_value)
    end
  end

  def count
    if @head == nil
      count = 0
    else
      count = 1
    end

    current_node = @head
        
    while current_node.next_node != nil
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def to_string
    current_node = @head
    list_string = ""
    add_space = " "

    while (current_node != nil)
      if current_node.next_node == nil
        list_string << current_node.data
      else
        list_string << current_node.data + add_space
      end
        current_node = current_node.next_node
    end
    list_string
  end

  def prepend(new_value)        
    old_head_next = @head.next_node 
    new_head = Node.new(new_value) 
    old_head = Node.new(@head.data) 
    @head = new_head 
    old_head.next_node = old_head_next 
  end

  def insert(start_value, new_value)
    inserted_node = Node.new(new_value)
    if start_value == 0
      inserted_node.next_node = @head
      @head = inserted_node
    elsif
      current_node = @head
      start_value == 1
      inserted_node.next_node = current_node.next_node
      current_node.next_node = inserted_node    
    elsif
      (start_value - 1).times do
      inserted_node.next_node = current_node.next_node
      current_node.next_node = inserted_node
      end
    end 
  end


  def find(start_value, num_of_returns)
    current_node = @head
    list_string = ""
    add_space = " "

    start_value.times do
      current_node = current_node.next_node
    end

    num_of_returns.times do
      if current_node.next_node == nil
        list_string << current_node.data
        current_node = current_node.next_node
      else
        list_string << current_node.data + add_space
        current_node = current_node.next_node
      end
    end
    list_string.strip
  end


  def includes?(value)
    current_node = @head
    until current_node.data == value || current_node.next_node == nil
      current_node = current_node.next_node
    end

    if current_node.data == value
      true
    else
      false
    end
  end

  def pop
    current_node = @head
    while current_node.next_node.next_node != nil
      current_node = current_node.next_node
    end
    
    popped_node = current_node.next_node
    current_node.next_node = nil
    popped_node.data        
  end
end 