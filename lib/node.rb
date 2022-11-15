# frozen_string_literal: true

# class for components making up each individual node in a linked list.
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end
