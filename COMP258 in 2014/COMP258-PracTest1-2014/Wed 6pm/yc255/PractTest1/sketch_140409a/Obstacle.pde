// This is the class for the obstacle in the game

class Obstacle
{
    
  //size and position of the obstacle stored in PVector
  public PVector size, position;
  
  //color for the obstacle
  public color obstacleColor;
  
}

//constructor for obstacle 
//x,y for the position, w,d for size(width and height)
public Obstacle(float x, float y, float w, float h, color obstacleColor)
{
  position = new PVector(x, y);
  size = new PVector(w, h);
  this.obstacleColor=obstacleColor;
  
  
}

//draw method for the obstacle
public void draw()
{
  //draw the obstacle
  rectMode(CORNERS);
  fill(obstacleColor);
  noStroke();
  rect(postion.x, postion.y, size.w, size.h);
  
  
}

//A method that takes a point(x,y)and returbs true if that point lies inside the rectangle of the obstacle
public boolean pointInObstacle(float x, float y)
{
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=size/2) return true;
    else return false;
}
