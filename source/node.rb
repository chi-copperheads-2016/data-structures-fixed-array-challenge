require_relative 'fixed_array'
class Node
  attr_accessor :element
  attr_reader :next

  def initialize(element)
    @element = element
    @next = nil
  end

  def insert_after(other_node)
    @next = other_node
  end

  def remove_after
    @next = nil
  end

end