require_relative "node"
require_relative "array_list"
class LinkedList < ArrayList

  def intialize
    super
  end

  def insert_first(element)
    array.insert(0, element)
  end

  def remove_first
    array.shift
  end

  def insert_last(element)
    self.add(element)
  end

  def remove_last
    array.pop
  end

end