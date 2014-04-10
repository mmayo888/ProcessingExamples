class Obstacle
{
 private PVector[] position;
 private PVector[]  _width;
 private PVector[]  _height;
 
 private int _colour = (#030CFF);
 private int _stroke = (#000000);

public Obstacle (float w, float h) //constructor
{
  _height = new PVector[60]; //stores the height in the PVector
  _width = new PVector[60];   //stores the width in the PVector
}

public void draw()
{
 rectMode(CENTER);
 fill(_colour);
 stroke(_stroke);
 strokeWeight(3);
 rect(200, 200, 100, 50);
 
}

public void pointInObstacle()
{
  
}

}
