# O(N ** 3) :D
def solution(a)
  slices = []
  result = 0
  min = 10000000
  a.each_with_index do |val1, index1|
    a.each_with_index do |val1, index2|
      slices.push([index1, index2]) if index1 < index2
    end
  end
  slices.each do |val|
    sum = a[val[0]..val[1]].inject {|sum, x| sum + x}
    length = a[val[0]..val[1]].length
    if (sum.to_f / length) < min
      min = (sum / length.to_f)
      result = val[0]
    end
  end
  result
end