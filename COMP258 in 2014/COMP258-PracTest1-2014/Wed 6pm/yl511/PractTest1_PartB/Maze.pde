public class Maze {

  // The array list of points
  private ArrayList<Obstacles> obstacle;
public Maze(color,float x,float y) 
{
  //create a empty ArrayList
  obstacle = new ArrayList<Obstacle>();

}
//draw method
public void draw()
{
    color(ObstacleColor);
  rect(position.x, position.y, ObstacleWidth, ObstacleHeight);
  for(int i=1; i<7;i++)
  {
  obstacle.get(i)=obstacle.get(i-1);
  }
}
public boolean addObstacle()
{
  //start by adding a new obstacle
  obstacle.add(new Obstacle(#2a2a2a,100,300));
}
public boolean checkForObstacleCollision()
{
      PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=ObstacleWidth*ObstacleHeight/2) return true;
    else return false;
}
  }

