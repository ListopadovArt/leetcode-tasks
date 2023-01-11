
/*
 Given the root of a binary tree, return its maximum depth.
 
 A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
 
 Example 1:
 
 Input: root = [3,9,20,null,null,15,7]
 Output: 3
 Example 2:
 
 Input: root = [1,null,2]
 Output: 2
 
 Constraints:
 
 The number of nodes in the tree is in the range [0, 104].
 -100 <= Node.val <= 100
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
    func maxDepth(_ root: TreeNode?) -> Int {
        
        guard root != nil else {
            return 0
        }
        
        return max((1 + maxDepth(root!.left)), (1 + maxDepth(root!.right)))
    }
}

let node_1 = TreeNode(7)
let node0 = TreeNode(15)
let node3 = TreeNode(20, node0, node_1)
let node2 = TreeNode(9)
let node1 = TreeNode(3, node2, node3)

let node6 = TreeNode(2)
let node4 = TreeNode(1, nil, node6)

let solution = Solution()
solution.maxDepth(node4)   // 2
solution.maxDepth(node1)   // 3
