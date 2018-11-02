def first_anagram?(string1, string2)
  perms =[]
  string1.chars.permutation.each do |perm|
    perms << perm.join("")
  end
  perms.include?(string2)
end

def second_anagram?(string1, string2)
  arr = string2.chars
  string1.chars.each do |char|
    i = arr.index(char)
    arr.delete_at(i) unless i.nil?
  end

  return true if arr.empty?
  false
end


def third_ananagram?(string1, string2)
  string1.chars.sort == string2.chars.sort
end

def fourth_anagram?(string1, string2)
  hash1 = Hash.new(0)
  string1.chars.each { |char| hash1[char] += 1 }


  string2.chars.each { |char| hash1[char] -= 1 }

  hash1.all? { |_, val| val == 0 }
end
