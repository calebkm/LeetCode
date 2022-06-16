# LeetCode - Plus One [EASY]
# https://leetcode.com/problems/plus-one

def plus_one(digits)
  digits.size.times do |t|
    i = digits.size - t - 1
    
    if digits[i] == 9
      digits[i] = 0
    else
      digits[i] += 1
      return digits
    end
  end
  
  [1] + digits
end
