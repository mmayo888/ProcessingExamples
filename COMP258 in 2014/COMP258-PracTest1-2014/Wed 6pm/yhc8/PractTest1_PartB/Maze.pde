class Maze
{
  private ArrayList<Obstacle> _obstacleList;
  private final int NUM_OBSTACLE = 6;
  
  public Maze()
  {
    _obstacleList = new ArrayList<Obstacle>();
    for(int i = 1; i <= NUM_OBSTACLE; i++)
    {
      _obstacleList.add(new Obstacle(random(100, 700), random(100,700), 50, 100));
    }
  }
  
  public void drawMaze()
  {
    for(Obstacle o: _obstacleList)
    {
      o.drawObstacle();
    }
  }
  
//  public boolean checkForObstacleCollision(float x, float y)
//  {
//    PVector obstacle = new PVector (x,y);
//    float distance = obstacle.dist();
//    if (distance <= _size/2) return true;
//    else return false;
//  }
}
