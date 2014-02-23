// Setup method -- called once at the start of the program
void setup(){
  size(600,600);
  // Print a message to the console
  println("Hello, World!");
}

// Draw method -- called once per frame
void draw() {
  // Set the sketch to a black background
  background(0);
  // Draw a message to the center of the sketch
  textAlign(CENTER,CENTER);
  textSize(80);
  text("Hello, World!", width/2, height/2);
}
