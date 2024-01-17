/**
 * @param {number[][]} matches
 * @return {number[][]}
 */
var findWinners = function(matches) {
    var zeroLoses = [];
    var oneLose = [];
    var map = new Map();

    for (const team of matches) {
        map.set(team[0], (map.get(team[0]) || 0) + 0);
        map.set(team[1], (map.get(team[1]) || 0) + 1);
    }

    for (const [i, loses] of map) {
        if (loses === 0) {
            zeroLoses.push(i);
        } else if (loses === 1) {
            oneLose.push(i);
        }
    }

    zeroLoses.sort((a, b) => a - b);
    oneLose.sort((a, b) => a - b);

    return [zeroLoses, oneLose];
};