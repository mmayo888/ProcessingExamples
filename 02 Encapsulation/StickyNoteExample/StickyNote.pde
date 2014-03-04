class StickyNote {
 
   // Properties of the note
 
   // The position of the center and the size
   public float noteX=width/2, noteY=height/2, 
                noteWidth=200, noteHeight=200;
   
   // The color
   public color noteColour = #FAFF0F;
  
   // The size of the text of the node
   public float textSize = 18;
  
   // The padding between the edge of the note and the text
   public float padding = 3;
  
   // The text 
   public String text = "Put the note's text here";
  
  // Methods for the note
  
  // Draw method
  public void draw() {
    // Draw the note
    rectMode(CENTER);
    fill(noteColour);
    stroke(0);
    strokeWeight(3);
    rect(noteX, noteY, noteWidth, noteHeight);
    // Draw the text
    fill(0);
    textSize(textSize);
    textAlign(LEFT);
    text(text, noteX+padding, noteY+padding, 
               noteWidth-2*padding, noteHeight-2*padding);
  } 
}
