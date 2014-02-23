
// Declare a constant for the number of bars shown
final int NUM_BARS=10;

// Declare a new array defining the x positions of a bars
float[] positions;

// Setup method
void setup() {
  // 600x600 sketch please
  size(600, 600); 
  // Create an empty positions array
  positions = new float[ NUM_BARS ];
  // Fill the array
  for (int index=0; index<positions.length; index++) {
    positions[ index ] = index * 60;
  }
}

// Draw method
void draw() {
  // Start with a white background
  background(255);
  // No stroke on the bars required
  noStroke();
  // Iterate over the bars
  for (int index=0; index<positions.length; index++) {
    // Determine the colour of the current bar
    color fillColor = getFillColor(index);
    // Draw the bar
    fill(fillColor);
    rect(positions[index], 0, width/positions.length, height);
  }
}

// A function to get a gray scale color given an array index
color getFillColor(int arrayPositionIndex) {
  color result = color( 255 * arrayPositionIndex/positions.length);
  return result;
}

