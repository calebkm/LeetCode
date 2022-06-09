# LeetCode - Valid Parentheses [EASY]
# https://leetcode.com/problems/valid-parentheses

def is_valid(s)
  pairs = {'(' => ')', '{' => '}', '[' => ']'}
  seen = []
  
  s.each_char do |b|
    seen << b and next if pairs[b]
    return false if b != pairs[seen.pop]
  end
  
  seen.empty?
end
