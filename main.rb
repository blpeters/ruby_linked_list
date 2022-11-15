# frozen_string_literal: true

require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new
list.append(45)
list.append(20)
puts "Size of linked list: #{list.size}"
list.tail
list.append('brett')
puts "Size of linked list: #{list.size}"
list.pop
puts "Size of linked list: #{list.size}"
list.append('karen')
list.head
list.tail
list.prepend('camper')
puts "Size of linked list: #{list.size}"
list.pop
puts "Size of linked list: #{list.size}"
list.pop
puts "Size of linked list: #{list.size}"
list.head
list.tail
list.append(175.4)
puts list.at(1)
puts list.at(2)
puts list.at(3)
puts list.at(5)
puts list.contains?(175.4)
puts list.contains?(175.3)
puts list.contains?('brett')
puts list.contains?(45)
list.append('campery')
list.append('karnen')
puts list.find(45)
puts list.find(175.4)
puts list.find('campery')
puts list.find('karnen')
list.to_s
