# LeetCode - Binary Search
# https://leetcode.com/problems/binary-search

def search(nums, target, offset=0)
  mid = nums.length / 2
  index = mid + offset

  return index if nums[mid] == target
  return -1 if nums.size == 1

  if target < nums[mid]
    search(nums[0...mid], target, offset)
  else
    search(nums[mid..nums.size], target, index)
  end
end
