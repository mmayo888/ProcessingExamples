
// Declaration of global variables defining the positions
// and colours for the baloon and the sky
float x,y,radius;
color fillColor, strokeColor, skyColor;

// Setup method -- called once at the start
void setup(){
  // Set the sketch to 600 x 600
  size(600,600);
  // Set the initial balloon position and size
  x=width/2;
  y=0;
  radius=50;
  // Set the colours
  fillColor=color(231, 67, 88);  // color function
  strokeColor=#000000;           // black!
  skyColor=#88A2FA;              // hex color notation
}

// Draw method
void draw() {
  // Declare some local variables
  float balloonWidth = radius * 2;
  float balloonHeight = radius * 2;
  // Clear the screen, setting it to sky blue
  background(skyColor);
  // Draw the balloon
  ellipseMode(CENTER);
  stroke(strokeColor);
  fill(fillColor);
  ellipse(x,y,balloonWidth, balloonHeight);
  // Move the balloon down if it is still above ground
  if (y+radius<height) {
    y++;
  }
}
