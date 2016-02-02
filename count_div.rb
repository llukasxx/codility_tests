# O(B-A), dunno how to do O(1)
def solution(a, b, k)
  arr = (a..b).to_a.select { |v| v%k == 0}
  arr.count
end