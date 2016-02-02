def solution(n)
  bin = n.to_s(2)
  counter = 0
  highest = 0
  bin.each_char.with_index do |c, i|
    if c == "0"
      counter += 1
      if counter > highest && bin[i..-1].include?("1")
        highest = counter
      end
    elsif c == "1"
      counter = 0
    end
  end
  highest
end
