class FixedArray

  attr_reader :array

  def initialize(size)
    @array = Array.new(size)
  end

  def is_within_bounds(index)
    index <= @array.length && index > 0
  end

  def get(index)
    if is_within_bounds(index)
      @array[index]
    else
      raise Exception.new("Out of Bounds")
    end
  end

  def set(index, element)
    if is_within_bounds(index)
      @array[index] = element
    else
      raise Exception.new("Out of Bounds")
    end
  end

end
