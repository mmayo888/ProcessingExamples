
// Declare a new array defining the x position of a rectangle
float[] positions;

// Setup method
void setup() {
  // 600x600 sketch please
  size(600, 600); 
  // Create an empty positions array
  positions = new float[ 10 ];
  // Fill the array
  for (int index=0; index<positions.length; index++) {
    positions[ index ] = index * 60;
  }
}

// Draw method
void draw() {
  background(255);
  noStroke();
  fill(0);
  for (int index=0; index<positions.length; index++) {
    color fillColor = getFillColor(index);
    fill(fillColor);
    rect(positions[index], 0, width/positions.length, height);
  }
}

// A function to get a gray scale color given an array index
color getFillColor(int arrayPositionIndex) {
  color result = color( 255 * arrayPositionIndex/positions.length);
  return result;
}

