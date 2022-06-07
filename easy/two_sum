# LeetCode - Two Sum [EASY]
# https://leetcode.com/problems/two-sum
# O(n) time, O(n) space

def two_sum(nums, target)
  seen = {}
  
  nums.each_with_index do |num, index|
    val = target - nums[index]
    
    if seen[val]
      return [seen[val], index]
    else
      seen[nums[index]] = index
    end
  end
end
