class Obstacle
{
  private PVector _position;
  
  private int _size;
  
  private color _obstacleColour = #672424;
  
  public Obstacle( int x, int y, int obHeight, int obWidth)
  {
    _position = new PVector(x, y);
    _size = obHeight;
    _size = obWidth;
  }
  
  public void draw()
  {
    rectMode(CENTER);
    fill(_obstacleColour);
    stroke(0);
    strokeWeight(3);
    rect(_position.x, _position.y, _size, _size);
  }
  
  public boolean pointInObstacle(int x, int y)
  {
    PVector point = new PVector(x,y);
    float distance = point.dist(_position);
    if (distance<=_size/2) return true;
    else return false;
  }
  
}
