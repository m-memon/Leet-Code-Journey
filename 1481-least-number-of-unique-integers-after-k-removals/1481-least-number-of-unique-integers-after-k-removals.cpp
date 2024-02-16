class Solution {
public:
    int findLeastNumOfUniqueInts(vector<int>& numbers, int removals) {
        unordered_map<int, int> frequencyCount;
        for (int num : numbers) {
            ++frequencyCount[num];
        }
        vector<int> frequencies;
        for (auto& [num, count] : frequencyCount) {
            frequencies.push_back(count);
        }
        sort(frequencies.begin(), frequencies.end());
        int uniqueNumbers = frequencies.size();
        for (int i = 0; i < frequencies.size(); ++i) {
            removals -= frequencies[i];
            if (removals < 0) {
                return uniqueNumbers - i;
            }
        }
        return 0;
    }
};