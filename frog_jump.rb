def solution(x, y, d)
  jumps = 0
  if x <= y
    distance_needed = y - x
    jumps = distance_needed/d
    jumps += 1 unless jumps*d == distance_needed
  end
  jumps
end