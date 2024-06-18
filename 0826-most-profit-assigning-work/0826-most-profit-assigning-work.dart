class Solution {
  int maxProfitAssignment(List<int> difficulty, List<int> profit, List<int> worker) {
    int ans = 0;
    List<MapEntry<int, int>> jobs = [];

    for (int i = 0; i < difficulty.length; i++) {
      jobs.add(MapEntry(difficulty[i], profit[i]));
    }

    jobs.sort((a, b) => a.key.compareTo(b.key));
    worker.sort();

    int i = 0;
    int maxProfit = 0;

    for (int w in worker) {
      while (i < jobs.length && w >= jobs[i].key) {
        maxProfit = max(maxProfit, jobs[i].value);
        i++;
      }
      ans += maxProfit;
    }

    return ans;
  }

  int max(int a, int b) {
    return (a > b) ? a : b;
  }
}