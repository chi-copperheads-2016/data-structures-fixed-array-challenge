class FixedArray
  attr_accessor :array
  attr_accessor :size

  def initialize(size)
    @size = size
    @array = Array.new(size)
  end

  def get(index)
    if index < self.size
      @array[index]
    else
      raise "Index does not exist"
   end
  end

  def set(index, element)
    if index <= self.size
      self.array[index] = element
    else
      raise "Index does not exist"
    end
  end
end
