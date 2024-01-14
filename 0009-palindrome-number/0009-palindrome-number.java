class Solution {
    public boolean isPalindrome(int x) {
        String myY = "";
        String myX = Integer.toString(x);

        for (int i = myX.length() - 1; i >= 0; --i) {
            myY = myY + myX.charAt(i);
        }

        return myY.equals(myX);
    }
}