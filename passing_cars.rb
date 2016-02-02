def solution(a)
  passing_cars = 0
  a.each.with_index do |v, i|
    passing_cars += count_passing(a, i, v) if v == 0
  end
  passing_cars
end

def count_passing(a, i, v)
  counter = 0
  a[i..-1].each do |val|
    counter += 1 if val != v
  end
  counter
end