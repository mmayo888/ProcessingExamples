public class Obstacle {

  public PVector position;
  public PVector size;
  public color obstacleColour;

  public Obstacle(int x, int y, int obstacleHeight, int obstacleWidth)
  {
    position = new PVector (x, y);
    size = new PVector (obstacleWidth, obstacleHeight);
    obstacleColour = #091ED3;
  }

  public void draw()
  {
    fill(obstacleColour);
    stroke(obstacleColour);
    rectMode(TOP);
    rect(position.x, position.y, size.x, size.y);
  }
  
  public boolean pointInObstacle(float x, float y)
  {
    PVector point = new PVector(x,y);
    
    if (point.x >= (position.x - size.x/2) && point.x <= ((position.x + size.x) - size.x/2) && point.y >= (position.y - size.y/2) && point.y <= ((position.y + size.y) - size.y/2)) return true;
    
    else return false;    
  }
}

