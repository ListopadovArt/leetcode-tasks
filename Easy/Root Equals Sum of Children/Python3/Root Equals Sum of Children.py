class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def checkTree(self, root: list[TreeNode]) -> bool:
        if not root and not root.left.val and not root.right.val:
            return False

        return root.val == root.left.val + root.right.val


tree_3 = TreeNode(1)
tree_2 = TreeNode(2)
tree_1 = TreeNode(3, tree_2, tree_3)

tree_6 = TreeNode(3)
tree_5 = TreeNode(2)
tree_4 = TreeNode(1, tree_5, tree_6)

tree_9 = TreeNode(0)
tree_8 = TreeNode(0)
tree_7 = TreeNode(0, tree_8, tree_9)

solution = Solution()
result_first = solution.checkTree(tree_1)   # True
print(result_first)

result_fourth = solution.checkTree(tree_4)   # False
print(result_fourth)
        
result_eight = solution.checkTree(tree_7)   # True
print(result_eight)        