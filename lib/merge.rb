def merge_sort(arr, result = [])
  return arr if arr.length < 2
  left = merge_sort(arr.slice(0, arr.length / 2))
  right = merge_sort(arr.slice(arr.length / 2, arr.length - 1))

  until left.empty? || right.empty?
    result << (left[0] > right[0] ? right.shift : left.shift)
  end
  result.concat(left).concat(right)
end

def control_sort(arr)
  arr.sort
end


test_array = [73, 1, 7, 23, 67, 74, 94, 86, 6, 79, 59, 30, 9, 88, 91, 33, 4, 74, 5, 54, 74]
puts control_sort(test_array).inspect

puts merge_sort(test_array).inspect