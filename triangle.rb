TriangleError = Class.new(StandardError)

class Triangle
  def initialize(a, b, c)
    @sides = [a, b, c].sort
  end

  def kind
    raise TriangleError.new if (@sides[0] + @sides[1] <= @sides[2])
    [:equilateral, :isosceles, :scalene][@sides.uniq.size - 1]
  end
end
