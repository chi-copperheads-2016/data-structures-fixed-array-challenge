require_relative "fixed_array"
class ArrayList < FixedArray

  def initialize(size)
    super(size)
  end

  def add(element)
    @array << element
    @length += 1
    @array.last
  end

  def size
    @length
  end
end