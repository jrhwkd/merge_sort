def merge_sort(array)
  final_array = []
  i_left = 0
  i_right = 0

  final_array << array[0] if array.length < 2

  if array.length > 1
    new_array_left = merge_sort(array.slice(0, array.length / 2))
    new_array_right = merge_sort(array.slice(array.length / 2, array.length))
    until new_array_right[i_right] == nil && new_array_left[i_left] == nil do
      if new_array_right[i_right] == nil
        final_array << new_array_left[i_left]
        i_left += 1
      elsif new_array_left[i_left] == nil
        final_array << new_array_right[i_right]
        i_right += 1
      elsif new_array_left[i_left] < new_array_right[i_right]
        final_array << new_array_left[i_left]
        i_left += 1
      else
        final_array << new_array_right[i_right]
        i_right += 1
      end
    end
  end

  return final_array
end

a = []
rand(200).times do
  a << rand(200)
end

p merge_sort(a)