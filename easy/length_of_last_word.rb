# LeetCode - Length Of Last Word [EASY]
# https://leetcode.com/problems/length-of-last-word
# O(n) time, O(1) space

def length_of_last_word(s)
  length = 0
  
  s.size.times do |i|
    if s[s.size-i-1] == ' '
      next if length == 0 
      return length
    else
      length += 1
    end
  end
  
  length
end

# And of course the "Ruby is Awesome" oneliner

def length_of_last_word(s)
  s.split(' ').last.size
end
