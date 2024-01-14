bool isPalindrome(int x) {
    char myY[12];
    char myX[12];
    sprintf(myX, "%d", x);
    
    int length = 0;
    while (myX[length] != '\0') {
        length++;
    }
    
    for (int i = length - 1, j = 0; i >= 0; --i, ++j) {
        myY[j] = myX[i];
    }
    myY[length] = '\0';
    
    if (strcmp(myY, myX) == 0) {
        return true;
    } else {
        return false;
    }
}