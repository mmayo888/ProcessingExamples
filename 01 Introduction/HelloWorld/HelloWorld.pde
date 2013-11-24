/* Hello, World example
 * 
 * This program demonstrates (i) how to print 'Hello, world' to the console when setup first runs,
 * and (ii) how to display 'Hello, world' on the sketchpad using the text() function
 */



/* Setup method
 * This method is called ONCE at the start of the program
 */

void setup(){
  // Set the sketchpad resolution to 300x300
  size(300,300);
  // Print message to the console
  println("Hello, World!");
}

/* Draw method
 * This method is called 60 TIMES PER SECOND as the program runs
 */

void draw() {
  // Erase the sketchpad
  background(200);
  // Set the size of the text that we want to display
  textSize(32);
  // Set the colour of the text that we want to display using red, green, blue values
  fill(61, 104, 14);
  // Draw the message
  // The coordinates specify the BOTTOM LEFT corner of the box surrounding the text
  text("Hello, World!", 0, 32);
}
