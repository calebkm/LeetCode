# LeetCode - Remove Duplicates From Sorted Linked List [EASY]
# https://leetcode.com/problems/remove-duplicates-from-sorted-list

def delete_duplicates(head)
  return unless head
  
  node = head
  
  while node
    while node.next && node.next.val == node.val
      node.next = node.next.next
    end
    
    node = node.next
  end
  
  head
end
