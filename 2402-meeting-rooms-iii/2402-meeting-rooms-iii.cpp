// Define a struct T representing a meeting with endTime and roomId.
struct Meeting {
  long end_time; // End time of the meeting
  int room_id;   // Id of the room where the meeting is held
};

// Define a class Solution for solving the most booked meeting rooms problem.
class Solution {
 public:
  // Function to find the most booked meeting room.
  int mostBooked(int num_rooms, vector<vector<int>>& meetings) {
    vector<int> room_counts(num_rooms); // Array to keep track of the count of meetings in each room

    // Sort meetings based on start times
    ranges::sort(meetings);

    // Lambda function to compare meetings based on end time and room id
    auto compare = [](const Meeting& a, const Meeting& b) {
      return a.end_time == b.end_time ? a.room_id > b.room_id : a.end_time > b.end_time;
    };

    // Priority queue to keep track of occupied meeting rooms
    priority_queue<Meeting, vector<Meeting>, decltype(compare)> occupied_rooms(compare);

    // Priority queue to keep track of available room ids
    priority_queue<int, vector<int>, greater<>> available_room_ids;

    // Initialize available room ids
    for (int i = 0; i < num_rooms; ++i)
      available_room_ids.push(i);

    // Iterate through each meeting
    for (const vector<int>& meeting : meetings) {
      const int start_time = meeting[0];
      const int end_time = meeting[1];

      // Push meetings ending before the current meeting into available rooms
      while (!occupied_rooms.empty() && occupied_rooms.top().end_time <= start_time)
        available_room_ids.push(occupied_rooms.top().room_id), occupied_rooms.pop();

      // If no available room, allocate the room with the earliest end time
      if (available_room_ids.empty()) {
        const auto [new_start_time, room_id] = occupied_rooms.top();
        occupied_rooms.pop();
        ++room_counts[room_id];
        occupied_rooms.push({new_start_time + (end_time - start_time), room_id});
      } else { // Otherwise, allocate the first available room
        const int room_id = available_room_ids.top();
        available_room_ids.pop();
        ++room_counts[room_id];
        occupied_rooms.push({end_time, room_id});
      }
    }

    // Find the room with the maximum count of meetings
    return ranges::max_element(room_counts) - room_counts.begin();
  }
};
