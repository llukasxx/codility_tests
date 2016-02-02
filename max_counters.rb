## Speed sucks - to be refactor

def solution(n, a)
  operate = Array.new(n) { |i| i = 0 }
  a.each_with_index do |val, i|
    operate = operation(i, val, operate)
  end
  operate
end

def operation(array_index, array_value, operate_array)
  operate_array.each_with_index do |val, i|
    if array_value == i+1
      operate_array[i] += 1
    elsif array_value == operate_array.length + 1
      max = operate_array.max
      operate_array.each_with_index do |val, i|
        operate_array[i] = max
      end
    end
  end
  operate_array
end


puts solution(5, [3,4,4,6,1,4,4])