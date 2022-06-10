# LeetCode - Merge Two Sorted Lists [EASY]
# https://leetcode.com/problems/merge-two-sorted-lists

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}

def merge_two_lists(a, b)
  head = tail = ListNode.new
  
  while a || b
    if !b || (a && a.val < b.val)
      node = a
      a = a.next
    else
      node = b
      b = b.next
    end
    
    tail.next = node
    tail = tail.next
  end
  
  head.next
end
