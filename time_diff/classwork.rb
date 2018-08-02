require 'byebug'

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# time_complexity = o(n^2)
def my_min(arr)
  smallest = 0
  arr.each do |el1|
    smallest = el1 if arr.all? { |el2| el2 >= el1 }
  end
  smallest
end

# time_complexity o(n)
def my_min2(arr)
  smallest = arr.first
  arr.each do |num|
    smallest = num if num < smallest
  end
  smallest
end

# time_complexity o(n^2)
def largest_sub_sum(arr)
  sub_groups = []
  arr.each_index do |i|
    arr.each_index do |j|
      sub_groups << arr[i..j] unless i == j || arr[i..j].empty?
    end
  end

  sum = 0
  sub_groups.each do |sub_arr|
    sub_sum = sub_arr.inject(:+)
    sum = sub_sum if sub_sum > sum
  end

  sum
end
#   sum = nil
# endpts = (0...arr.length).to_a(Array).product((0...arr.length).to_a(Array))

def best_sub_sum(arr)
  return arr.max if arr.all? { |el| el < 0 }

  largest_sum = arr.first
  current_sum = arr.first


  i = 1
  while i < arr.length
    largest_sum = current_sum if current_sum > largest_sum
    current_sum = 0 if current_sum < 0
    # debugger
    current_sum += arr[i]
    i += 1
  end
  [largest_sum, current_sum].max
end

# list = [2, 3, -6, 7, -6, 7]
# list = [1, 2, 3, 4, 7, -6, 7]
# list1 = [2,-1,3]
# list2 = [5,-6,1]

a = "cat"
a.split("").permutation.to_a.map { |word| word.join("") }
