# LeetCode - First Bad Version
# https://leetcode.com/problems/first-bad-version

def first_bad_version(n, max=nil)
  max ||= n
  guess = (max + n) / 2
  
  if is_bad_version(n)
    return n unless is_bad_version(n-1)
    max = n
    guess = n / 2
  end
  
  first_bad_version(guess, max)
end
