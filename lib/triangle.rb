require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
      if (a == 0) || (b == 0) || (c == 0) || (c >= a + b) || (a >= b + c) || (b >= a + c)
       raise TriangleError
      elsif (a == b) && (b == c)
        :equilateral
      elsif ((a == b) && (b != c)) || ((a == c) && (c != b)) || (a == b) || (b == c) || (a == c)
        :isosceles
      elsif (a != b) && (a != c) && (b != c)
        :scalene
      end
  end

  class TriangleError < StandardError
  end


end
