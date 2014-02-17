/* RandomWordfindGrid
 * Author: Michael Mayo
 *
 * This program demonstrates how to use two dimensional arrays and for loops.
 * It creates and displays a random wordfind grid.
 */

// Constants defining the width and height of the sketchpad
final int SKETCHPAD_WIDTH   = 500;
final int SKETCHPAD_HEIGHT  = 500;

// Constants defining the width and height of the wordfind grid
final int WORDFIND_GRID_WIDTH   = 10;
final int WORDFIND_GRID_HEIGHT  = 10;

// Constants defining how the wordfind grid will be displayed
final int WORDFIND_GRID_SPACING = 10;
final int WORDFIND_GRID_STROKE_COLOUR = #2F15E3;
final int WORDFIND_GRID_LETTER_COLOUR = #F258CE;


// Global variables indicating the width in pixels of each letter in the wordfind grid
int letterWidth, letterHeight;

// Global array containing the letters in the wordfind
char[][] letters;

/* Setup method
 *
 * Inititializes the sketchpad, calculates the sizes of each letter in the grid, and creates the wordfind grid.
 */
 
void setup(){
  // Set the size of the sketchpad
  size(SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT);
  // Calcluate the height and width of each letter 
  // (including the ellipse around it and the spacing between ellipses)
  letterWidth=SKETCHPAD_WIDTH/WORDFIND_GRID_WIDTH;
  letterHeight=SKETCHPAD_HEIGHT/WORDFIND_GRID_HEIGHT;
  // Create the wordfind letters
  letters = new char[ WORDFIND_GRID_WIDTH ][ WORDFIND_GRID_HEIGHT ];
  // Populate the grid with random letters
  for (int x=0; x<WORDFIND_GRID_WIDTH; x++)
  for (int y=0; y<WORDFIND_GRID_HEIGHT; y++)
    letters[ x ][ y ] = (char)(random(26) + 'a');  // create a random letter in range 'a'-'z'
}

/* Draw method
 *
 * Draws the wordfind grid.
 */

void draw() {
  // Iterate over each letter in the wordfind grid
  for (int x=0; x<WORDFIND_GRID_WIDTH; x++)
  for (int y=0; y<WORDFIND_GRID_HEIGHT; y++) {
    // Calculate the center of the ellipse that will surround the current letter
    int ellipseCenterX = x*letterWidth+letterWidth/2;
    int ellipseCenterY = y*letterHeight+letterHeight/2;
    // Draw the ellipse
    stroke(WORDFIND_GRID_STROKE_COLOUR);
    strokeWeight(2);
    noFill();
    ellipse(ellipseCenterX, ellipseCenterY, 
            letterWidth-WORDFIND_GRID_SPACING, letterHeight-WORDFIND_GRID_SPACING);
    // Draw the letter
    noStroke();
    fill(WORDFIND_GRID_LETTER_COLOUR);
    textSize(letterHeight-2*WORDFIND_GRID_SPACING);       // Make size of text smaller than the ellipse
    textAlign(CENTER);                                    // Alignment is centered on x position
    text(letters[ x ][ y ],ellipseCenterX, ellipseCenterY+letterHeight/4); // Draw the letter
  }
    
}
