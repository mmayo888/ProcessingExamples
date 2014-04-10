//Rebekka Marsh
//1162352
//PracTest1_PartA

public class Obstacle
{
  //the x and y positions for the obstacle
  PVector _pos;
  //the width and heigh for the obstacle
  PVector _dimensions;
  //the colour of the obstacle
  color _colour;

  //A constructor for the obstacle
  public Obstacle (int x, int y, int w, int h, color colour)
  {
    _pos = new PVector(x, y);
    _dimensions = new PVector (w, h);
    _colour = colour;
  }
  //Draw method for the obstacle
  public void drawObstacle()
  {
    rectMode(CENTER);
    fill(_colour);
    strokeWeight(2);
    stroke(#000000);
    //draws rectangle given x, y, width and height passed in the obstacle
    rect(_pos.x, _pos.y, _dimensions.x, _dimensions.y);
    //rect(30, 20, 55, 55);
  }

  //Method that checks if x and y points are on the obstacle
  public boolean pointInObstacle(int x, int y)
  {
    boolean inObstacle = false;
    //checks if x and y points are in the obstacle
    if (x < _pos.x - _dimensions.x/2 || x > _pos.x + _dimensions.x/2 || y < _pos.y - _dimensions.y/2 || y > _pos.y + _dimensions.y/2 )
    {
      //if points are not in obstacle boolean is false
      inObstacle = false;
    }
    else
    {
      //otherwise (if points are in obstacle, boolean is true
      inObstacle=true;
    }
    //returns boolean
    return inObstacle;
  }
}

