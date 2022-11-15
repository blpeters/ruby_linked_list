# frozen_string_literal: true

require_relative 'node'

# Creating a manual linked list in Ruby without built-in array methods/class.
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
    return nil if !@head
    puts "The head of the list is #{@head.value}"
    @head.value
  end

  def tail
    return nil if !@tail
    puts "The tail of the list is #{@tail.value}"
    @tail.value
  end

  def at(index)
    current_index = 0
    current_node = @head
    if index >= size
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
    current_index = 0
    current_node = @head
    if size <= 1
      @head = nil
      @tail = nil 
    else
      until current_index == size - 2
        current_node = current_node.next_node
        current_index += 1
      end
      @tail = current_node
      @tail.next_node = nil
    end
  end

  def contains?(value)
    current_node = @head
    for i in 0..(size - 1)
      if value == current_node.value
        return true
      else
        current_node = current_node.next_node
      end
    end
    false
  end

  def find(value)
    current_node = @head
    for i in 0..(size - 1)
      if value == current_node.value
        return i
      else
        current_node = current_node.next_node
      end
    end
    nil
  end

  def to_s
    current_node = @head
    print "(#{current_node.value})"
    for i in 0..(size - 2)
      current_node = current_node.next_node
      print " -> (#{current_node.value})"
    end
    print " -> nil  "
  end
end
