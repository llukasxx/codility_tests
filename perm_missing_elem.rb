def solution(a)
  arr = Array.new(a.length+1) {|i| i += 1}
  result = arr - a
  result[0]
end