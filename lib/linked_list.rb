# frozen_string_literal: true

require_relative 'node'

class LinkedList
  
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
    puts "Appended new node (#{value}) to the end of the linked list."
  end

  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
    puts "Prepended new node (#{value}) to the front of the linked list."
  end

  def size
    current_node = @head
    current_node == nil ? (return 0) : count = 1
    until current_node.next_node == nil
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def head
    puts "The head of the list is #{@head.value}"
    @head.value
  end

  def tail
    puts "The tail of the list is #{@tail.value}"
    @tail.value
  end

  def at(index)
    current_index = 0
    current_node = @head
    if index >= self.size
      return "Index does not exist."
    else
      until current_index == index
        current_index += 1
        current_node = current_node.next_node
      end
      current_node.value
    end 
  end

  def pop
    
  end

  def contains?(value)

  end

  def find(value)

  end

  def to_s

  end

  # EXTRA CREDIT

  def insert_at(value, index)

  end

  def remove_at(index)

  end
end
