# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def isPalindrome(self, head: ListNode) -> bool:
        
        # 96ms,24.6MB
        s=[]
        while head is not None:
            s.append(head.val) 
            head=head.next
            
        return s==s[::-1]