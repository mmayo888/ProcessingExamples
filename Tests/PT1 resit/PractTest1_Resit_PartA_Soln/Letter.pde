class Letter {
 
   // The letter to be displayed
   public char letter; 
   
   // The drawing colour
   public color colour;
  
   // The position of the letter on the screen
   public PVector position;
  
   // The size of the letter on the screen
   public float size;
  
   // Constructor
  public Letter(char letter, float x, float y, color colour) {
     this.letter = letter;
     position = new PVector(x,y);
     this.colour = colour;
     size = 100;
  }
  
  // Draw method
  public void draw() {
     textSize(size-10);
     fill(colour);
     textAlign(CENTER,CENTER);
     text(letter,position.x,position.y-10);
     noFill();
     stroke(colour);
     ellipseMode(CENTER);
     ellipse(position.x,position.y,size,size);
  }
  
  
}
