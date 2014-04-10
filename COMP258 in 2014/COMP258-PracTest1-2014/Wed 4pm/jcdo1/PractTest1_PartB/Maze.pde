public class Maze {
  
  ArrayList<Obstacle> maze;

  public void Maze()
  {
    maze = new ArrayList<Obstacle>();
  }
  
  public void addObstacle(int x, int y, int w, int h)
  {
    Obstacle obstacle = new Obstacle(x, y, w, h);
    maze.add(obstacle);
  }

  public void draw()
  {
    for (Obstacle obstacle: maze)
    obstacle.draw();
  }
  
  public boolean checkForObstacleCollision(float x, float y)
  {
    PVector point = new PVector(x,y);
    
    for (Obstacle obstacle: maze)
    {
      if(obstacle.pointInObstacle(x, y))
      {
        return true;
      }
      else return false;
    }
  }
}

