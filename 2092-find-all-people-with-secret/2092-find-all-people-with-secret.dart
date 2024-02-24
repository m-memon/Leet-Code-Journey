import 'dart:collection';

class Solution {
  List<int> findAllPeople(int n, List<List<int>> meetings, int firstPerson) {
    // Initialize a parent array to represent connections between people.
    List<int> parentArray = List.generate(n + 1, (index) => index);
    parentArray[firstPerson] = 0; // Connect the first person directly to person 0.

    // Helper function to find the ultimate parent of a person.
    int findParent(int personIndex) {
      if (parentArray[personIndex] != personIndex) {
        parentArray[personIndex] = findParent(parentArray[personIndex]);
      }
      return parentArray[personIndex];
    }

    // A map to store lists of meetings by the time they occur.
    var meetingTimesMap = LinkedHashMap<int, List<List<int>>>();
    for (var meeting in meetings) {
      final time = meeting[2];
      var timeMeetings = meetingTimesMap[time] ?? [];
      timeMeetings.add(meeting);
      meetingTimesMap[time] = timeMeetings;
    }

    // Sort the times to process meetings in chronological order.
    var sortedTimes = meetingTimesMap.keys.toList()..sort();

    for (var time in sortedTimes) {
      // First round to connect all people who meet at this time.
      for (var meeting in meetingTimesMap[time]!) {
        var personA = meeting[0];
        var personB = meeting[1];
        var parentA = findParent(personA);
        var parentB = findParent(personB);
        if (parentArray[parentA] == 0 || parentArray[parentB] == 0) {
          parentArray[parentA] = 0;
          parentArray[parentB] = 0;
        }
        parentArray[findParent(personA)] = parentArray[findParent(personB)];
      }

      // Second round to reset meeting participant's parent if they shouldn't be connected.
      for (var meeting in meetingTimesMap[time]!) {
        var personA = meeting[0];
        var personB = meeting[1];
        if (parentArray[findParent(personA)] != 0 &&
            parentArray[findParent(personB)] != 0) {
          parentArray[personA] = personA;
          parentArray[personB] = personB;
        }
      }
    }

    // Collect all people who are still connected to person 0.
    var peopleConnectedToZero = <int>[];
    for (var i = 0; i < n; i++) {
      if (parentArray[findParent(i)] == 0) {
        peopleConnectedToZero.add(i);
      }
    }

    // Return the list of people that remain connected to person 0.
    return peopleConnectedToZero;
  }
}