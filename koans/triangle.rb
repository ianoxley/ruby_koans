# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  #
  [a, b, c].each {|item|
    raise TriangleError, "Invalid length for a side of a triangle" if item <= 0
    raise TriangleError, "2 equal sides must be longer than the shorted side" if (a == b and a < c) or (b == c and a > b) or (a == c and b > a)
  } 

  return :equilateral if is_equilateral?(a, b, c)
  return :isosceles if is_isosceles?(a, b, c)
  return :scalene if is_scalene?(a, b, c)
  raise TriangleError, "Unknown or invalid triangle"
end

def is_equilateral?(a, b, c)
  a == b and b == c
end

def is_isosceles?(a, b, c)
  (a == b and a != c) or (a == c and a != b) or (b == c and b != a)
end

def is_scalene?(a, b, c)
  a != b and b != c and a != c
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
