# LeetCode - Search Insert Position
# https://leetcode.com/problems/search-insert-position

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target, offset=0)
  guess = nums.size / 2  # Make a guess in the middle of nums
  index = guess + offset # Calculate real index based on current offset
  
  # If we found the target then return the index.
  if nums[guess] == target
    return index 
  end
  
  # If nums has a single element
  # return index where target SHOULD be.
  if nums.size == 1
    return target < nums.first ? index : index + 1
  end
  
  # We didn't find the target, keep looking.
  if target < nums[guess]
    # Search the smaller half of nums if target is less than guess.
    search_insert(nums[0...guess], target, offset)
  else
    # Search the larger half of nums otherwise.
    search_insert(nums[guess..nums.size-1], target, index)
  end
end
