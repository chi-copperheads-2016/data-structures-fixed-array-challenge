require_relative "fixed_array"
class ArrayList < FixedArray

  def initialize(size = 0)
    super(size)
  end

  def add(element)
    array << element
    @length += 1
    array.last
  end

  def size
    length
  end

  def insert(index, element)
    array.insert(index, element)
    array[index]
  end
end