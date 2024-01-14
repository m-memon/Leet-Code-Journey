class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        myY = ""
        myX = str(x)
        for i in range(len(myX) - 1, -1, -1):
            myY = myY + myX[i]
        return myY == myX