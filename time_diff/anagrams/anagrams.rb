
# O(n!)
def first_anagram?(str1, str2)
  permutations = str1.split("").permutation.to_a.map { |word| word.join("") }

  # n
  permutations.include?(str2)
end

# O(n) n = str1.length
def second_anagram?(str1, str2)
  str2_arr = str2.split('')
  str1.split('').each do |char|
    return false unless str2_arr.index(char)
    str2_arr.delete_at(str2_arr.index(char))
  end
  str2_arr.length == 0
end

# O(nlogn)
def third_anagram?(str1, str2)
  str1.split('').sort == str2.split('').sort
end
O(n)
def fourth_anagram?(str1, str2)
  hash = Hash.new(0)
  str1.each_char do |char|
    hash[char] += 1
  end

  str2.each_char do |char|
    hash[char] -= 1
  end
  print hash
  !hash.any? {|k, v| v != 0}
end
