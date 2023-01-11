
/*
 Given the root node of a binary search tree and two integers low and high, return the sum of values of all nodes with a value in the inclusive range [low, high].
 
 Example 1:
 
 Input: root = [10,5,15,3,7,null,18], low = 7, high = 15
 Output: 32
 Explanation: Nodes 7, 10, and 15 are in the range [7, 15]. 7 + 10 + 15 = 32.
 
 Example 2:
 
 Input: root = [10,5,15,3,7,13,18,1,null,6], low = 6, high = 10
 Output: 23
 Explanation: Nodes 6, 7, and 10 are in the range [6, 10]. 6 + 7 + 10 = 23.
 
 Constraints:
 
 The number of nodes in the tree is in the range [1, 2 * 104].
 1 <= Node.val <= 105
 1 <= low <= high <= 105
 All Node.val are unique.
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
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        
        guard root != nil else {
            return 0
        }
        
        var isValid: Bool {
            return (root!.val >= low) && (root!.val <= high)
        }
        
        if isValid {
            return root!.val + rangeSumBST(root?.left, low, high) + rangeSumBST(root?.right, low, high)
        } else {
            return rangeSumBST(root?.left, low, high) + rangeSumBST(root?.right, low, high)
        }
    }
}

let node10 = TreeNode(10, node5, node15)
let node5 = TreeNode(5, node3, node7)
let node15 = TreeNode(15, nil, node18)
let node3 = TreeNode(3)
let node7 = TreeNode(7)
let node18 = TreeNode(18)



let solution = Solution()
solution.rangeSumBST(node10, 7, 15)   // 32
