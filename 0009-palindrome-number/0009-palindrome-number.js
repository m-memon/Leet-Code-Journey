/**
 * @param {number} x
 * @return {boolean}
 */
var isPalindrome = function(x) {
    var myY = '';
    var myX = x.toString();
    
    for (var i = myX.length - 1; i >= 0; --i) {
        myY = myY + myX[i];
    }
    
    return myY === myX;
};