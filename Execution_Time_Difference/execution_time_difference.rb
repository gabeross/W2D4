


def best_min1(list) #O(n^2)
  min = true                 #O(1)
  list.each do |n|           #O(n)
    list.each do |m|         #O(n)
      min = false if m < n    #O(1)
    end
    return n if min == true    #O(1)
  end

end

def my_min2(list)   #O(n)
  best_min = list[0]
  list.each do |n|
    best_min = n if n < best_min
  end
  best_min
end

def largest_contiguous_subsum(arr)
  result = []

  arr.each_index do |i|
    arr.each_index do |j|
      result << arr[i..j] unless i > j
    end
  end

  reduce_result = []

  result.each do |sub|
    sum = 0
    sub.each { |n| sum += n}
    reduce_result << sum
  end
  reduce_result.max
end

def better_c_sum(arr)
  best_sum = arr.first
  total_sum = 0

  arr.each do |element|
    total_sum = total_sum + element
    best_sum = total_sum if total_sum > best_sum
    total_sum = 0 if total_sum < 0


  end

  best_sum


end
