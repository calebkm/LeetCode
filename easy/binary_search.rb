# LeetCode - Binary Search [EASY]
# https://leetcode.com/problems/binary-search

def search(nums, target, offset=0)
  guess = nums.length / 2
  index = guess + offset

  return index if nums[guess] == target
  return -1 if nums.size == 1

  if target < nums[guess]
    search(nums[0...guess], target, offset)
  else
    search(nums[guess..nums.size], target, index)
  end
end
