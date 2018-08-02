def bad_two_sum?(arr, target)
  arr.each do |num1|
    arr.each do |num2|
      unless num1 == num2
        return true if num1 + num2 == target
      end
    end
  end
  false
end

def okay_two_sum?(arr, target)
  new_arr = arr.sort.map {|num| num - target}
  until new_arr.first.abs == new_arr.last
    return false if new_arr.length == 1
    new_arr.shift if new_arr.first.abs > new_arr.last
    new_arr.pop if new_arr.first.abs < new_arr.last
  end
  true
end
# doesnt work

def two_sum?(arr, target)
  hash = Hash.new(0)
  arr.each do |num|
    hash[num] += 1
  end

  hash.each do |num, count|
    addend = target - num
    if hash[addend] != 0
      if addend == num
        if count > 1
          return true
        else
          return false
        end
      end
    return true
    end
  end
  false
end
