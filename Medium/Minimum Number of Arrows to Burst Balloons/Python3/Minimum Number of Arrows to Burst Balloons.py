class Solution:
    def findMinArrowShots(self, points: [[int]]) -> int:
        points.sort(key = lambda x:x[1])
        current = points[0][1]
        count = 1
        
        for point in points:
            if point[0] > current:
                count += 1
                current = point[1]
        return count
                
                
solution = Solution()
result = solution.findMinArrowShots([[9,12],[1,10],[4,11],[8,12],[3,9],[6,9],[6,7]])   # 2
print(result)