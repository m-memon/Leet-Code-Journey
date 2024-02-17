class Solution {
public:
    int furthestBuilding(vector<int>& heights, int bricks, int ladders) {
        // Min-heap to keep track of the minimum height differences overcome with ladders
        priority_queue<int, vector<int>, greater<int>> minHeap;
        int numBuildings = heights.size(); // Total number of buildings
      
        // Iterate through each building except the last one
        for (int i = 0; i < numBuildings - 1; ++i) {
            int currentHeight = heights[i];      // Height of the current building
            int nextHeight = heights[i + 1];     // Height of the next building
            int heightDifference = nextHeight - currentHeight; // Calculate the height difference
          
            if (heightDifference > 0) { // If the next building is taller
                minHeap.push(heightDifference); // Use a ladder for now to climb up
                if (minHeap.size() > ladders) { // If we have used more ladders than we have
                    bricks -= minHeap.top(); // Replace one ladder use with bricks
                    minHeap.pop(); // Remove the smallest height difference we overcame with a ladder
                    if (bricks < 0) { // If we don't have enough bricks to go to the next building
                        return i; // Return the index of the current building
                    }
                }
            }
        }
        // If we manage to consider all the buildings, return the index of the last building
        return numBuildings - 1;
    }
};
