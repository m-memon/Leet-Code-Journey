class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        std::unordered_map<int, int> numMap; // key is the number, value is its index
        
        for (int i = 0; i < nums.size(); ++i) {
            int complement = target - nums[i];
            
            // Check if the complement is in the hash map
            auto it = numMap.find(complement);
            if (it != numMap.end()) {
                // Found the pair
                return {it->second, i};
            }
            
            // Add the current number and its index to the hash map
            numMap[nums[i]] = i;
        }
        
        // No solution found
        return {};   
    }
};