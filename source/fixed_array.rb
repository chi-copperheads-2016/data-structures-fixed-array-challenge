class FixedArray
  attr_reader :length
  attr_accessor :array
  def initialize(size)
    @length = size
    @array = Array.new(@length)
  end

  def get(index)
    if index < @length && index >= 0
      @array[index]
    else
      raise OutOfBoundsException
    end
  end

end
