# LeetCode - First Bad Version
# https://leetcode.com/problems/first-bad-version

def first_bad_version(n, min=0, max=nil)
  max ||= n
  
  if is_bad_version(n)
    return n unless is_bad_version(n-1)
    max = n
  else
    min = n
  end
  
  n = (max + min) / 2
  first_bad_version(n, min, max)
end
