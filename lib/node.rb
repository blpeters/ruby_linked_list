# frozen_string_literal: true

# class for components making up each individual node in a linked list.
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def value
    @value
  end

  # TODO: CREATE SOME SORT OF POINTER TO THE NEXT NODE. CAN'T DO THAT UNTIL THE NEXT NODE IS CREATED.
  def next_node
    @next_node
  end
end
