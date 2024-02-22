class Solution {
  int findJudge(int n, List<List<int>> trust) {
    // Create an array to count the number of trusts for each person
    List<int> trustCount = List<int>.filled(n + 1, 0);

    // Iterate through the trust relationships and update trust count
    for (List<int> relation in trust) {
      int a = relation[0]; // Person trusting
      int b = relation[1]; // Person trusted
      trustCount[a]--;
      trustCount[b]++;
    }

    // Check for the person trusted by everyone
    for (int i = 1; i <= n; i++) {
      if (trustCount[i] == n - 1) {
        return i; // Found the judge
      }
    }

    return -1; // No judge found
  }
}