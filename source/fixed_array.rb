class FixedArray
  attr_accessor :size, :array

  def initialize(size, array)
    @size = size
    @array = Array.new(size, array)
  end

  def get(index)
    if index <= self.size
      self.array[index]
    else
      raise "Index does not exist"
    end
  end

  def set(index, element)
    self.get(index) << element
    element
  end
end