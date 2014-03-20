// A class representing a rectangular wall in the maze

class Obstacle {

  // The position and size of the obstacle
  public PVector position, size;

    // The colour of the obstacle
  public color obstacleFillColour;

  // A constructor for the obstacle
  public Obstacle(float x, float y, float w, float h) {
    position = new PVector(x, y);
    size = new PVector(w, h);
    obstacleFillColour=#503717;
  }

  // Draw method for the obstacle
  public void draw() {
    rectMode(CORNER);
    fill(obstacleFillColour);
    noStroke();
    rect(position.x, position.y, size.x, size.y);
  }
  
  // Method to check to see whether a point lies in the
  // rectangle of this obstacle
  // Returns true if the point is inside the obstacle
  public boolean pointInObstacle(float x, float y){
    return x>=position.x && x<=position.x+size.x
          && y>=position.y && y<=position.y+size.y;
  }
  
}

