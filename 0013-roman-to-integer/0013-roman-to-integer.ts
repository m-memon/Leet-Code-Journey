function romanToInt(s: string): number {
    const myMap: { [key: string]: number } = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    };

    let result: number = myMap[s.charAt(s.length - 1)];

    for (let i: number = s.length - 2; i >= 0; --i) {
        if (myMap[s.charAt(i)] < myMap[s.charAt(i + 1)]) {
            result -= myMap[s.charAt(i)];
        } else {
            result += myMap[s.charAt(i)];
        }
    }

    return result;
};