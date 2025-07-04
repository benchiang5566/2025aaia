/// week12-6.cpp
/// LeetCode 1920. Build Array from Permutation
/// 用 for 迴圈，把陣列 ans[i] = nums[nums[i]]
class Solution {
public:
    vector<int> buildArray(vector<int>& nums) {
        int N = nums.size(); /// 陣列的大小
        vector<int> ans(N); /// ans 的大小，是N。小心是圓括號 C++ 陣列
        for(int i=0; i<N; i++){
            ans[i] = nums[nums[i]]; /// 題目要你坐這個
        }
        return ans;
    }
};
