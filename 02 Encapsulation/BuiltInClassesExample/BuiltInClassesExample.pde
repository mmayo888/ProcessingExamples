
// Declare some references to objects
PVector start, end;
PImage myImage, anotherImage;
PFont myFont;


// Setup method
void setup(){
  // 600x600 sketch
  size(600,600);
  // Create the vector objects
  start = new PVector(0,0);
  end = new PVector(300,150);
  // Create the image object
  myImage = loadImage("tree.jpg");
  // Resize the image so it is not too big
  myImage.resize(200,0);
  // Create the font object
  myFont = createFont("ZOOMRG__.TTF", 32);
  // Demonstrate that anotherImage is null..
  if (anotherImage==null) {
     println("one of the images is null, please load it"); 
  }
}

// Draw method
void draw(){
    // Clear the screen
    background(0);
    // Draw a line using the start and end vectors
    stroke(255);
    line(start.x, start.y, end.x, end.y);
    // Draw the image
    image(myImage, 300, 300);
    // Draw some text using my font
    textFont(myFont);
    textAlign(CENTER, CENTER);
    text("Sample Text", 150, 300);
}
