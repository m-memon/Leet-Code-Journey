public class Solution {
    public int RomanToInt(string s) {
        Dictionary<char, int> myDictionary = new Dictionary<char, int>();
        myDictionary['I'] = 1;
        myDictionary['V'] = 5;
        myDictionary['X'] = 10;
        myDictionary['L'] = 50;
        myDictionary['C'] = 100;
        myDictionary['D'] = 500;
        myDictionary['M'] = 1000;

        int result = myDictionary[s[^1]];
        for (int i = s.Length - 2; i >= 0; --i) {
            if (myDictionary[s[i]] < myDictionary[s[i + 1]]) {
                result -= myDictionary[s[i]];
            } else {
                result += myDictionary[s[i]];
            }
        }
        return result;
    }
}