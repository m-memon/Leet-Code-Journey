/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {
    const myMap = new Map();
    myMap.set('I', 1);
    myMap.set('V', 5);
    myMap.set('X', 10);
    myMap.set('L', 50);
    myMap.set('C', 100);
    myMap.set('D', 500);
    myMap.set('M', 1000);

    let result = myMap.get(s[s.length - 1]);

    for (let i = s.length - 2; i >= 0; --i) {
        if (myMap.get(s[i]) < myMap.get(s[i + 1])) {
            result -= myMap.get(s[i]);
        } else {
            result += myMap.get(s[i]);
        }
    }

    return result;
};