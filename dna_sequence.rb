# O(n*m) :(
def solution(s, p, q)
  values = {A: 1, C: 2, G: 3, T: 4}
  result = []
  p.each_with_index do |val, i|
    min = 4
    s[p[i]..q[i]].each_char do |char|
      value = values[char.to_sym]
      min = value if value < min
    end
    result.push(min)
  end
  result
end