function isPalindrome(x: number): boolean {
    const myX: string = x.toString();
    let myY: string = "";

    for (let i: number = myX.length - 1; i >= 0; --i) {
        myY = myY + myX[i];
    }

    return myY === myX;
};