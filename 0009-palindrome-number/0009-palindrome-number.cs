public class Solution {
    public bool IsPalindrome(int x) {
        string myY = "";
        string myX = x.ToString();
        
        for (int i = myX.Length - 1; i >= 0; --i) {
            myY = myY + myX[i];
        }
        
        return myY == myX;
    }
}