//A class respresenting an obstacle in the game
class Obstacle
{
  //The position of the obstacle
  public PVector position;
  
  //The size of the obstacle
  public PVector size;
  
  //The color of the obstacle
  public color obColor;
  
  
  //Constructor for the obstacle
  public Obstacle(float x, float y, float w, float h)
  {
    position= new PVector(x, y);
    size=new PVector(w, h);
    obColor=#000000;
  }
  
  //Draw method for the obstable
  public void draw()
  {
    rectMode(CENTER);
    fill(obColor);
    stroke(0);
    rect(position.x, position.y, size.x, size.y);
  }
  
  // Method to see if a point lies on the obstacle
  // Returns true if it is
  public boolean pointInObstacle(float x, float y)
  {
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if(x>=position.x-size.x/2 && x<=position.x+size.x/2
     && y>=position.y-size.y/2 && y<=position.y+size.y/2) 
     return true;
    else return false;
  }
}
