class Maze 
{
  private ArrayList <Obstacle> _obstacleList;
  private final int OBSTACLE_WIDTH = 100;
  private final int OBSTACLE_HEIGHT = 150;
  private final color OBSTACLE_COLOR = #894F3B;
  
  
  public Maze()
  {
     _obstacleList = new ArrayList <Obstacle> (); 
  }
  
  public void addObstacle(int x, int y)
  {
      Obstacle o = new Obstacle(x, y, OBSTACLE_WIDTH, OBSTACLE_WIDTH, OBSTACLE_COLOR);
      _obstacleList.add(o);
  }
  
  public void drawMaze()
  {
    for(Obstacle o: _obstacleList)
      o.drawObstacle();
  }
  
  private boolean checkForObstacleCollision(int x, int y)
  {
    return x>= x - OBSTACLE_WIDTH/2 && x<= x + OBSTACLE_WIDTH/2
          && y>= y - OBSTACLE_HEIGHT/2 && y<= y +  OBSTACLE_HEIGHT/2;


  }
  
}

