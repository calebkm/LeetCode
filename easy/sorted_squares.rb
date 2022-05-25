# LeetCode - Squares of a Sorted Array
# https://leetcode.com/problems/squares-of-a-sorted-array
# O(n) Time, O(n) Space

def sorted_squares(nums)
  arr = []
  l = 0
  r = nums.size - 1
  i = r
  
  until i < 0
    left = nums[l]**2
    right = nums[r]**2
    
    if left > right
      arr[i] = left
      l += 1
    else
      arr[i] = right
      r -= 1
    end
    
    i -= 1
  end
     
  arr
end
