//class for the obstacle

class Obstacle {
// size of the obstacle
  public PVector obSize;
  // colour of the obstacle
  public color obColour;
  // position of the obstacle
  public PVector obPos;
}
  
  // A constructor for the obstacle
  public Obstacle(color obColour, float x, float y) {
  this.obColour=obColour;
     obPos = new PVector(x, y);
    obSize = 50;
  }
  
  //draw method for obstacle
  public void draw() {
    rectMode(CENTER);
    stroke(obColour);
    noFill();
    rect(position.x, position.y, size, size);
}
    //Checks if point is in obstacle, if it is then returns true.
    public boolean pointInObstacle(float x, float y) {
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=size/2) return true;
    else return false;
    }

    


