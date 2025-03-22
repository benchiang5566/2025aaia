# week 03-1.py
#LeetCode 2579 .coumt Total Number of Colored Cells
class Solution:
    def coloredCells(self, n: int) -> int:
        return n*n + (n-1)*(n-1)
