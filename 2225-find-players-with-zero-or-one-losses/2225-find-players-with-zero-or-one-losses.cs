public class Solution {
    public IList<IList<int>> FindWinners(int[][] matches) {
        List<int> zeroLoses = new List<int>();
        List<int> oneLose = new List<int>();
        Dictionary<int, int> map = new Dictionary<int, int>();

        foreach (var team in matches) {
            if (!map.ContainsKey(team[0])) {
                map[team[0]] = 0;
            }
            map[team[0]] += 0;

            if (!map.ContainsKey(team[1])) {
                map[team[1]] = 0;
            }
            map[team[1]] += 1;
        }

        foreach (var entry in map) {
            int i = entry.Key;
            int loses = entry.Value;

            if (loses == 0) {
                zeroLoses.Add(i);
            } else if (loses == 1) {
                oneLose.Add(i);
            }
        }

        zeroLoses.Sort();
        oneLose.Sort();

        return new List<IList<int>> { zeroLoses, oneLose };
    }
}