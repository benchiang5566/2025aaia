#week04-2.py
# week=4-1.py
# Leetcode 2529. Maximum Count of Positive Integer and Negative Integer
class Solution:
    def maximumCount(self, nums: List[int]) -> int:
        pos = 0
        neg = 0
        for i in range(len(nums)):
            if nums[i] > 0: pos +=1 #正數
            if nums[i] < 0: neg +=1 #負數

        return max(pos,neg) #把大的數回傳結束
