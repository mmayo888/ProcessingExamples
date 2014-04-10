
class Obstacle {


  // The colour of the Obstacle
  public color ObstacleColour;

  // The position of the Obstacle
  public PVector position;

  // The size of the Obstacle
  public int size;


  // The weight of the Obstacle
  public int ObstacleStrokeWeight;
  public int ObstacleStrokeHeight;

  // A constructor for the Obstacle
  public Obstacle(color ObstacleColour, float x, float y) {
    this.ObstacleColour=ObstacleColour;
    position = new PVector(x, y);
    size = 100;
    ObstacleStrokeWeight = 20;
  }
    // Draw method for the Obstacle
  public void draw() {
    stroke(ObstacleColour);
    strokeWeight(ObstacleStrokeWeight);
    for (int index=1; index<points.size(); index++) {
      PVector fromPoint = points.get(index-1);
      PVector toPoint = points.get(index);
      line(fromPoint.x, fromPoint.y, toPoint.x, toPoint.y);
  }
  
  
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=size/2) return true;
    else return false;
  }
}

