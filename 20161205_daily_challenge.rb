#####################
#### Description ####
#####################

# You are given 4 points on a Cartesian plane. Return true if these points form a square, and false otherwise.

# Example

# For

# points = [0, 0,
#           0, 3,
#           3, 3,
#           3, 0]
# the output should be
# Square_Check(points) = true.


# Input/Output

# [time limit] 4000ms (rb)
# [input] array.integer points

# Array of 8 integers. For each i in range [0, 3] the pair (points[i * 2], points[i * 2 + 1]) stands for some point. It is guaranteed that all points are unique.

# Note, that the points can be given in random order.

# Constraints:
# points.length = 8,
# -105 ≤ points ≤ 105.

# [output] boolean

# true if the given points form a square, false otherwise

####################
####  Solution  ####
####################

def Square_Check(points)
 point = points.pop(2)
 d= []
 points.each_slice(2) do |p|
   d << (((point[0] - p[0]) ** 2) + ((point[1] - p[1]) ** 2))
 end
    d.sort!
    d[0] == d[1]
end
