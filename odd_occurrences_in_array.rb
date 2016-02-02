def solution(a)
  result = 0
  for number in a
    puts result ^= number
  end
  result
end
