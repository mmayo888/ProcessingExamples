MultiColouredWord word;

void setup() {
  size(600,600);
  word = new MultiColouredWord("Test word", 0, height/2);
}

void draw() {
  background(0);
  word.draw();
}

class MultiColouredWord {

  // The word
  private String word;

  // The colour of each letter
  private color[] colours;

  // The position of the word
  private PVector position;

  // The size of the word
  public float textSize;

  // Constructor
  public MultiColouredWord(String word, float x, float y) {
    // Copy a reference to the word
    this.word = word;
    // Create a random colour for each character
    colours = new color[ word.length() ];
    for (int index=0; index<colours.length; index++) {
      colours[index]=color(random(255), random(255), random(255));
    }
    // Initialise the position of the word
    position = new PVector(x, y);
    // Initialise the size of the text
    textSize = 60;
  }

  // Draw method
  public void draw() {
    // Set text alignment to horizontal left and vertical top
    textAlign(LEFT, TOP);
    // Set the text size
    textSize(textSize);
    // Initialize a position indicater letterX that starts at position.x and
    // moves right across the screen as each character is printed
    float letterX=position.x;
    // Iterate over the letters, drawing them
    for (int index=0; index<word.length(); index++) {
      // Set the colour and draw it
      fill(colours[index]);
      text(word.charAt(index), letterX, position.y);
      // Update letterX
      letterX += textWidth( word.charAt(index) );
    }
  }
}

