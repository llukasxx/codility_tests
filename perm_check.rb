def solution(a)
  arr = Array.new(a.length) {|i| i+=1}
  (arr - a).empty? 1 : 0
end