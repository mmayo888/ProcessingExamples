//A class representing a token, which is typically a start or
// end point 

class Token {

  // The text for the token
  public String text;

  // The colour of the token
  public color tokenColour;

  // The position of the token
  public PVector position;

  // The size of the token
  public int size;

  // The text size of the token's text
  public int textSize;

  // The weight of the token's border
  public int tokenStrokeWeight;

  // A constructor for the token
  public Token(String text, color tokenColour, float x, float y) {
    this.text=text;
    this.tokenColour=tokenColour;
    position = new PVector(x, y);
    size = 75;
    textSize = 24;
    tokenStrokeWeight = 4;
  }

  // Draw method for the token
  public void draw() {
    // Draw the border
    ellipseMode(CENTER);
    stroke(tokenColour);
    strokeWeight(tokenStrokeWeight);
    noFill();
    ellipse(position.x, position.y, size, size);
    // Draw the text
    textSize(textSize);
    fill(tokenColour);
    textAlign(CENTER, CENTER);
    text(text, position.x, position.y);
  }

  // Method to check to see whether a point lies on this token
  // Returns true if the point is inside the token
  public boolean pointInToken(float x, float y) {
    PVector point = new PVector(x, y);
    float distance = point.dist(position);
    if (distance<=size/2) return true;
    else return false;
  }
}

