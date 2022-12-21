
/*
 Given the head of a singly linked list, return the middle node of the linked list.

 If there are two middle nodes, return the second middle node.

 Example 1:

 Input: head = [1,2,3,4,5]
 Output: [3,4,5]
 Explanation: The middle node of the list is node 3.
 
 Example 2:
 Input: head = [1,2,3,4,5,6]
 Output: [4,5,6]
 Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.

 Constraints:

 The number of nodes in the list is in the range [1, 100].
 1 <= Node.val <= 100
 */

import Foundation

public class ListNode {
   
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
        
    }
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        var middle = head
        var end = head

        while end != nil && end?.next != nil {
            middle = middle?.next
            end = end?.next?.next
        }
        return middle
    }
}


// 1 2 3 4 5 6
let node6 = ListNode(6)
let node5 = ListNode(5, node6)
let node4 = ListNode(4, node5)
let node3 = ListNode(3, node4)
let node2 = ListNode(2, node3)
let node1 = ListNode(1, node2)


let solution = Solution()
solution.middleNode(node1)?.val

