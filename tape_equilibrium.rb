def solution(a)
  p = (1..a.length-1).to_a
  min = ((a.take(1).inject {|sum, x| sum + x }) - (a.drop(1).inject {|sum, x| sum + x })).abs
  p.each do |val|
    sum1 = a.take(val).inject {|sum, x| sum + x }
    sum2 = a.drop(val).inject {|sum, x| sum + x }
    if (sum1 - sum2).abs < min
      min = (sum1 - sum2).abs
    end
  end
  min
end

puts solution([1,2])