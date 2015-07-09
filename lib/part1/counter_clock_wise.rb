class CounterClockWise
  def self.detect(a, b, c)
    area = (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x)

    if area > 0
      :counterclockwise
    elsif area < 0
      :clockwise
    else
      :collinear
    end
  end
end
