# frozen_string_literal: true

require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new
list.append(45)
list.append(20)
puts "Size of linked list: #{list.size}"
list.tail
list.append('brett')
list.head
list.tail
list.prepend('camper')
puts "Size of linked list: #{list.size}"
list.head
list.tail
puts list.at(1)
puts list.at(2)
puts list.at(5)
