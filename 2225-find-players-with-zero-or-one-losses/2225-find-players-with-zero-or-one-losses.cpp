class Solution {
public:
    vector<vector<int>> findWinners(vector<vector<int>>& matches) {
        vector<int> zeroLoses;
        vector<int> oneLose;
        unordered_map<int, int> map;

        for (const auto& team : matches) {
            map[team[0]] += 0;
            map[team[1]] += 1;
        }

        for (const auto& entry : map) {
            int i = entry.first;
            int loses = entry.second;

            if (loses == 0) {
                zeroLoses.push_back(i);
            } else if (loses == 1) {
                oneLose.push_back(i);
            }
        }

        sort(zeroLoses.begin(), zeroLoses.end());
        sort(oneLose.begin(), oneLose.end());

        return {zeroLoses, oneLose};
    }
};