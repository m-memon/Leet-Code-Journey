class Solution:
    def romanToInt(self, s: str) -> int:
        my_map = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}

        result = my_map[s[-1]]
        for i in range(len(s) - 2, -1, -1):
            if my_map[s[i]] < my_map[s[i + 1]]:
                result -= my_map[s[i]]
            else:
                result += my_map[s[i]]
        
        return result