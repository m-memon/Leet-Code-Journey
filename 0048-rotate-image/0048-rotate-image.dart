class Solution {
  void rotate(List<List<int>> matrix) {
    List<List<int>> temp = [];
    for (int column = 0; column < matrix.length; column++) {
      temp.add([]);
      for (int row = 0; row < matrix[column].length; row++) {
        temp[column].add(matrix[column][row]);
      }
    }
    int column = 0;
    for (int row = temp.length - 1; row >= 0; row--) {
      for (int index = 0; index < temp[row].length; index++) {
        matrix[index][column] = temp[row][index];
      }
      column++;
    }
  }
}