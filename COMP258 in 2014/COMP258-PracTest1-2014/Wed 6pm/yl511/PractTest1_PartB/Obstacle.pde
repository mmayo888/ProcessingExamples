//A class representing Obstacle
public class Obstacle
{
  public PVector position;
  public int ObstacleWidth;
  public int ObstacleHeight;
  public color ObstacleColor;

// A constructor for the Obstacle
public Obstacle(color ObstacleColor, float x, float y) 
{
  this.ObstacleColor=ObstacleColor;
  position = new PVector(x, y);
  this.ObstacleColor = ObstacleColor;
  ObstacleWidth = 200;
  ObstacleHeight = 40;
}
public void draw()
{
  color(ObstacleColor);
  rect(position.x, position.y, ObstacleWidth, ObstacleHeight);
}
  // Method to check to see whether a point lies on this Obstacle
  // Returns true if the point is inside the Obstacle
  public boolean pointInObstacle(float x, float y){
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=ObstacleWidth*ObstacleHeight/2) return true;
    else return false;
  }
}

