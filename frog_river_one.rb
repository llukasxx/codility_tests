## Need to refactor due to O(n**2) :/

def solution(x, a)
  to_check = (1..x).to_a
  result = a.find_index.with_index do |val,i| 
    ##val == x && to_check.all? {|v| a[0..i].include?(v) }
    to_check.all? {|v| a[0..i].include?(v) }
  end
  result ? result : -1
end