def bad_two_sum?(arr, target)
  sums = []
  arr.each_index do |i1|
    break if i1 == (arr.length - 1)
    (i1 + 1..arr.length - 1).each do |i2|
      sums << arr[i1] + arr[i2]
    end
  end
  sums.include?(target)
end

def okay_two_sum(arr, target)
  sorted_arr = arr.sort

  sorted_arr.each_with_index do |el, i|
    bsearch_result = bsearch(arr[i+1..-1], (target - el))
    return true unless bsearch_result.nil?
  end
  false
end

def bsearch(arr, target)
  return nil if arr.empty?
  mid = arr.length / 2

  return mid if arr[mid] == target

  if target < arr[mid]
    bsearch(arr[0...mid], target)
  else
    upper_result = bsearch(arr[mid + 1..-1], target)
    return upper_result + mid unless upper_result.nil?
  end
end

def two_sum(arr, target)
  hash = Hash.new(nil)

  arr.each do |el|
    return true if hash[el]

    difference = target - el
    hash[difference] = el
  end
  false
end
