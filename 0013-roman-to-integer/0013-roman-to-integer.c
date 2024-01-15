int romanToInt(char* s) {
    int myMap[128];

    myMap['I'] = 1;
    myMap['V'] = 5;
    myMap['X'] = 10;
    myMap['L'] = 50;
    myMap['C'] = 100;
    myMap['D'] = 500;
    myMap['M'] = 1000;

    int result = myMap[s[strlen(s) - 1]];
    for (int i = strlen(s) - 2; i >= 0; --i) {
        if (myMap[s[i]] < myMap[s[i + 1]]) {
            result -= myMap[s[i]];
        } else {
            result += myMap[s[i]];
        }
    }
    return result;
}