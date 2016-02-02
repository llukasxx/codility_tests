# Still bad :(
def solution(a)
  result = 1
  a.sort!
  if a.max <= 0
    return result
  end
  index = a.index { |i| i > 0 }
  if a[index] != 1
    return result
  end
  a[index..-1].each do |v|
    if !a.include?(v+1)
      result = v+1
      break
    end
  end
  result
end