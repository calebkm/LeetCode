# LeetCode - Longest Common Prefix [EASY]
# https://leetcode.com/problems/longest-common-prefix

def longest_common_prefix(strs)
  prefix = ''
  i = 0
  
  loop do
    chars = Set.new(strs.map { |str| str[i] })
    return prefix if chars.size > 1 
    return prefix unless chars.first
    prefix += chars.first
    i += 1
  end
end
