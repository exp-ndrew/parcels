class Parcel
  def initialize (length, height, width, weight)
    @length = length
    @height = height
    @width = width
    @weight = weight
  end

  def length
    @length
  end

  def height
    @height
  end

  def width
    @width
  end

  def weight
    @weight
  end

  def volume
    @length * @height * @width
  end

  def cost_to_ship
    "%.2f" % (volume * 0.01 + @weight)
  end
end

