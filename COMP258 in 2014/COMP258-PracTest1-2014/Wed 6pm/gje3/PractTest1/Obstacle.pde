//obstacle class
class Obstacle
{
private PVector _position;
private PVector _size;
private color obst_color;

public Obstacle(int xpos, int ypos)
{
 _position = new PVector();
 _size = new PVector();
 _position.x = xpos;
 _position.y = ypos;
 _size.x = 100;
 _size.y = 50;
 obst_color = #7E4747;
}
public void draw()
{
 rect(_position.x,_position.y,_size.x,_size.y); 
}
public boolean pointInObstacle(int x, int y)
{
 PVector point = new PVector(x,y);
// float distance = point.dist(_position);
// if (distance<=_size.x/2 || distance<=_size.y/2)
// {
//   return true;
// }
// else
// {
//   return false; 
// }

 //this is the way i did it and i bet it isnt the way you wanted it done:P
 //above is my code that I tried and failed at
 if(point.x >= _position.x && point.x <= _position.x + _size.x && point.y >= _position.y && point.y <= _position.y + _size.y)
 {
  return true;
 }
 else
 {
  return false;
 }
 }
}
