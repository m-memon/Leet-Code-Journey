class Solution {
  int minMovesToSeat(List<int> seats, List<int> students) {
    int ans = 0;

    seats.sort();
    students.sort();

    for (int i = 0; i < seats.length; ++i) {
      ans += (seats[i] - students[i]).abs();
    }

    return ans;
  }
}