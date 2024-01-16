class Solution(object):
    def findWinners(self, matches):
        """
        :type matches: List[List[int]]
        :rtype: List[List[int]]
        """
        zeroLoses = []
        oneLose = []
        team_map = {}

        for team in matches:
            team_map[team[0]] = team_map.get(team[0], 0) + 0
            team_map[team[1]] = team_map.get(team[1], 0) + 1

        for i, loses in team_map.items():
            if loses == 0:
                zeroLoses.append(i)
            elif loses == 1:
                oneLose.append(i)

        zeroLoses.sort()
        oneLose.sort()

        return [zeroLoses, oneLose]