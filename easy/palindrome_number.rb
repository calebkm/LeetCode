# LeetCode - Palindrome Number [EASY]
# https://leetcode.com/problems/palindrome-number
# O(n) time, O(1) space

def is_palindrome(x)
  str = x.to_s
  i = 0
  j = str.length - 1
  
  while i < j
    return false unless str[i] == str[j]
    i += 1
    j -= 1
  end
  
  true
end
