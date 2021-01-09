def merge_sort(arr)
  return arr if arr.length < 2

  a, b = arr.each_slice((arr.length + 1) / 2).to_a.map { |part| merge_sort(part) }
  result = []
  result << (a[0] < b[0] ? a.shift : b.shift) until a.length.zero? || b.length.zero?
  result + a + b
end

p merge_sort([5,2,3,4,1])
p merge_sort([20,8,1,4,9,0,5,2,3,4,1])