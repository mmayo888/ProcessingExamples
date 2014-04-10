class Grid {
  
  // List of letters
  private ArrayList<Letter> letters;
  
  // Constructor
  public Grid() {
     letters = new ArrayList<Letter>(); 
  }
  
  // Method to add random letters in a grid
  public void addRandomLetters() {
     for (float x = 75; x<width; x+=150)
     for (float y = 75; y<height; y+=150) {
        char randomLetter = (char)('A'+(int)random(26));
        color randomColour = color( random(255), random(255), random(255) );
        letters.add( new Letter(randomLetter, x, y, randomColour) );
     }
  }
  
  // Draw method that draws each letter individually
  public void draw() {
     for (Letter letter: letters)
      letter.draw(); 
  }
}
