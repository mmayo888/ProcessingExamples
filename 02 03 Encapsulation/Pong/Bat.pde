class Bat {
   
   // Color of the bat
   private color batColor;
   
   // Horizontal position of the bat and the left and right bounds
   private float x, minX, maxX; 
   
   // Vertical position of the bat
   private float y;
  
   // Width and height of the bat
   private float batWidth, batHeight;
  
   // Velocity of the bat when it moves in pixels per frame
   private float velocity;
  
   // Constructor 
   public Bat(color batColor, float minX, float maxX, float y,
              float batWidth, float batHeight, float velocity) {
     // Copy the initial settings for the bat, setting the
     // initial x position to the midpoint between the lower and
     // upper bounds
     this.batColor = batColor;
     this.minX     = minX;
     this.maxX     = maxX;
     this.x        = (minX+maxX)/2;
     this.y        = y;
     this.batWidth = batWidth;
     this.batHeight= batHeight;
     this.velocity = velocity;
   }
   
   // ToString method for printing out the Bat to the console
   public String toString() {
     String result = "Bat: batColor="+batColor+" x="+x+" minX="+minX;
     result+=" maxX="+maxX+" y="+y+" batHeight="+batHeight+" batWidth="+batWidth;
     result+=" velocity="+velocity;
     return result;
   }
   
   // Draw method for drawing the bat
   public void draw() {
     noStroke();
     fill( batColor );
     rectMode( CENTER ); 
     rect( x, y, batWidth, batHeight );
   }
   
   // Method to move the bat right, ensuring it doesn't go off the right edge 
   // of the sketchpad
   public void moveRight() {
      x += velocity; 
      if (x + batWidth/2 > maxX) x = maxX - batWidth/2;
   }
   
   // Method to move the bat left, ensuring that it doesn't go off the left edge 
   // of the sketchpad
   public void moveLeft() {
      x -= velocity; 
      if (x - batWidth/2 < minX) x = minX + batWidth/2;
   }
}
