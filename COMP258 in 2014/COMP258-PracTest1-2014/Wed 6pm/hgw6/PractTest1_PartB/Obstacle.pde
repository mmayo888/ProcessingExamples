// A class representing a obstacle
// shape of the obstacle

class Obstacle{
  
  // The position of the obstacle
  public PVector position, size;
  
  // The colour of the obstacle
  public color obstacleColour=#F09F1D;

  // A constructor for the obstacle
  public Obstacle (float _x, float _y, float _w, float _h) {
    position = new PVector(_x, _y);
    size = new PVector(_w, _h);

  }
  
    // Draw method for the obstacle
  public void draw() {
    // Draw the rectangle
    rectMode(CENTER);
    fill(obstacleColour);
    noStroke();
    rect(position.x, position.y, size.x, size.y);
  }
  
  // Method to check to see whether a point lies on this obstacle
  // Returns true if the point is inside the obstacle
//  public boolean pointInObstacle(float x, float y){
//    PVector point = new PVector(x,y);
//    float distance = point.dist(position);
//    if (distance<=size/2) return true;
//    else return false;
//  }

}
