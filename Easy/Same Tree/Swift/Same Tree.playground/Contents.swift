/*
 Given the roots of two binary trees p and q, write a function to check if they are the same or not.

 Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

 Example 1:

 Input: p = [1,2,3], q = [1,2,3]
 Output: true
 
 Example 2:

 Input: p = [1,2], q = [1,null,2]
 Output: false
 
 Example 3:

 Input: p = [1,2,1], q = [1,1,2]
 Output: false
  
 Constraints:

 The number of nodes in both trees is in the range [0, 100].
 -104 <= Node.val <= 104
 */


  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
          self.val = val
          self.left = left
          self.right = right
      }
  }



class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        if p == nil && q == nil {
            return true
        }
        
        if p == nil || q == nil || p?.val != q?.val {
            return false
        }
        
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}


let node3 = TreeNode(1)
let node2 = TreeNode(2)
let node1 = TreeNode(1, node2, node3)
node1.val
node2.val
node3.val

let node6 = TreeNode(2)
let node5 = TreeNode(1)
let node4 = TreeNode(1, node5, node6)
node4.val
node5.val
node6.val

let solution = Solution()
solution.isSameTree(node1, node4)   // false

let nodeNil_1 = TreeNode()
let nodeNil_2 = TreeNode()
solution.isSameTree(nodeNil_1, nodeNil_2)   // true
