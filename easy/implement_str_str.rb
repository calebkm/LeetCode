# LeetCode - Implement strStr [EASY]
# https://leetcode.com/problems/implement-strstr

def str_str(haystack, needle)
  haystack.size.times do |i|  
    if haystack[i] == needle[0] and haystack[i, needle.size] == needle
      return i
    end
  end
  -1
end
