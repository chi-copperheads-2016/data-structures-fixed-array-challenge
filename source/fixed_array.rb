class FixedArray
  attr_accessor :length
  attr_accessor :array
  def initialize(size)
    @length = size
    @array = Array.new(@length)
  end

  def get(index)
    if index < @length && index >= 0
      @array[index]
    else
      raise "Out of Bounds"
    end
  end

  def set(index, element)
    if index < @length && index >= 0
      @array[index] = element
      @array[index]
    else
      raise "Out of Bounds"
    end
  end

end
