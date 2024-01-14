class Solution {
public:
    bool isPalindrome(int x) {
        std::string myY;
        std::string myX = std::to_string(x);
        for (int i = myX.length() - 1; i >= 0; --i) {
            myY = myY+ myX[i];
        }
        if (myY == myX) {
            return true;
        } else {
            return false;
        }
    }
};