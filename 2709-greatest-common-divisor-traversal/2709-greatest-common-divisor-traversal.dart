class UnionFind {
  late List<int> id;
  late List<int> sz;

  UnionFind(int n) {
    id = List.generate(n, (index) => index);
    sz = List.filled(n, 1);
  }

  void unionBySize(int u, int v) {
    final int i = find(u);
    final int j = find(v);
    if (i == j) return;
    if (sz[i] < sz[j]) {
      sz[j] += sz[i];
      id[i] = j;
    } else {
      sz[i] += sz[j];
      id[j] = i;
    }
  }

  int getSize(int i) {
    return sz[i];
  }

  int find(int u) {
    return id[u] == u ? u : id[u] = find(id[u]);
  }
}

class Solution {
  bool canTraverseAllPairs(List<int> nums) {
    final int n = nums.length;
    final int maxNum = nums.reduce((value, element) => value > element ? value : element);
    final List<int> minPrimeFactors = sieveEratosthenes(maxNum + 1);
    final Map<int, int> primeToFirstIndex = {};
    final UnionFind uf = UnionFind(n);

    for (int i = 0; i < n; ++i)
      for (final int primeFactor in getPrimeFactors(nums[i], minPrimeFactors))
        if (primeToFirstIndex.containsKey(primeFactor))
          uf.unionBySize(primeToFirstIndex[primeFactor]!, i);
        else
          primeToFirstIndex[primeFactor] = i;

    for (int i = 0; i < n; ++i)
      if (uf.getSize(i) == n)
        return true;

    return false;
  }

  List<int> sieveEratosthenes(int n) {
    final List<int> minPrimeFactors = List.generate(n + 1, (index) => index);
    for (int i = 2; i * i < n; ++i)
      if (minPrimeFactors[i] == i)
        for (int j = i * i; j < n; j += i)
          minPrimeFactors[j] = min(minPrimeFactors[j], i);
    return minPrimeFactors;
  }

  List<int> getPrimeFactors(int num, List<int> minPrimeFactors) {
    final List<int> primeFactors = [];
    while (num > 1) {
      final int divisor = minPrimeFactors[num]!;
      primeFactors.add(divisor);
      while (num % divisor == 0)
        num ~/= divisor;
    }
    return primeFactors;
  }
}