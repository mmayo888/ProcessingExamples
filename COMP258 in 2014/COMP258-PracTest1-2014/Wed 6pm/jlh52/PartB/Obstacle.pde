class Obstacle
{
  // x and y position
 public PVector position; 
 // width and height
 public PVector size;
 // colour of obstacle
 public color obstacleColour = #1BDBCC;
 // constructor
 //public Obstacle(PVector _positions, PVector _size)
 public Obstacle(float x, float y, float _width, float _height)
 {
  position = new PVector(x, y);
  size = new PVector(_width, _height);
  
 }
 void draw()
 {
  fill(obstacleColour);
  rect(position.x, position.y, size.x, size.y); 
 }
  public boolean pointInToken(float x, float y)
  {
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=size.x/2) return true;
    else return false;
  }
}
