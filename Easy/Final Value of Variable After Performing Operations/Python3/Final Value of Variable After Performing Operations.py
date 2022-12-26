class Solution:
    
    # The first solution
    def finalValueAfterOperationsFirst(self, operations: List[str]) -> int:
        sum = 0
        for i in operations:
            if i == "++X" or i == "X++":
                sum += 1
            elif i == "X--" or i == "--X":
                sum -= 1
        return sum
        
        
    # The second solution
    def finalValueAfterOperationsSecond(self, operations: List[str]) -> int:
        sum = 0
        for i in operations:
            if "+" in i:
                sum += 1
            else:
                sum -= 1
        return sum
    
    
solution = Solution()
solution.finalValueAfterOperationsFirst(["--X","X++","X++"])   # 1
solution.finalValueAfterOperationsFirst(["++X","++X","X++"])   # 3
solution.finalValueAfterOperationsFirst(["X++","++X","--X","X--"])   # 0

solution.finalValueAfterOperationsSecond(["--X","X++","X++"])   # 1
solution.finalValueAfterOperationsSecond(["++X","++X","X++"])   # 3
solution.finalValueAfterOperationsSecond(["X++","++X","--X","X--"])   # 0