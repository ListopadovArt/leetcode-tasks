class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


class Solution:
    def isSameTree(self, p: list[TreeNode], q: list[TreeNode]) -> bool:
        if not p and not q:
            return True
        
        if not p or not q or p.val != q.val:
            return False

        return self.isSameTree(p.left, q.left) and self.isSameTree(p.right, q.right)
    
    
tree_3 = TreeNode(3)
tree_2 = TreeNode(2)
tree_1 = TreeNode(1, tree_2, tree_3)

tree_6 = TreeNode(3)
tree_5 = TreeNode(2)
tree_4 = TreeNode(1, tree_5, tree_6)

solution = Solution()
result = solution.isSameTree(tree_1, tree_4)
print(result)