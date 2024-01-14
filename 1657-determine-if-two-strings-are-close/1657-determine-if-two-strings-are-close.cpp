class Solution {
public:
    bool closeStrings(string word1, string word2) {
        if (word1.length() != word2.length()) {
            return false;
        }

        // Count the frequency of each character in both words
        std::unordered_map<char, int> freq1, freq2;

        for (char c : word1) {
            freq1[c]++;
        }

        for (char c : word2) {
            freq2[c]++;
        }

        // Check if the sets of characters are the same
        if (freq1 == freq2) {
            return true;
        }

        // Check if the sets of characters have the same elements (regardless of
        // frequency)
        std::vector<char> chars1, chars2;

        for (const auto& entry : freq1) {
            chars1.push_back(entry.first);
        }

        for (const auto& entry : freq2) {
            chars2.push_back(entry.first);
        }

        // Sort the character vectors
        std::sort(chars1.begin(), chars1.end());
        std::sort(chars2.begin(), chars2.end());

        // Check if the sorted vectors are the same
        if (chars1 != chars2) {
            return false;
        }

        // Check if the frequencies of characters in both words are the same
        // (ignoring the actual character)
        std::vector<int> freqs1, freqs2;

        for (const auto& entry : freq1) {
            freqs1.push_back(entry.second);
        }

        for (const auto& entry : freq2) {
            freqs2.push_back(entry.second);
        }

        // Sort the frequency vectors
        std::sort(freqs1.begin(), freqs1.end());
        std::sort(freqs2.begin(), freqs2.end());

        // Check if the sorted frequency vectors are the same
        return freqs1 == freqs2;
    }
};