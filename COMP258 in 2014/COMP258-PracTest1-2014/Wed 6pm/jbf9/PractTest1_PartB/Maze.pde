class Maze
{
  private ArrayList<Obstacle> _obstaclesMaze;
  
  public Maze()
  {
    _obstaclesMaze = new ArrayList<Obstacle>();
  }
  
  public void drawMaze()
  {
    for (Obstacle o:_obstaclesMaze)
    {
      o.drawObstacle();
    }
  }
  public void addObstacle(int obX, int obY, int obWidth, int obHeight)
  {
    Obstacle temp = new Obstacle(obX, obY, obWidth, obHeight);
    _obstaclesMaze.add(temp);
  }
  
  public boolean checkForObstacleCollision(int cX, int cY)
  {
    boolean check = false;
      for (Obstacle o:_obstaclesMaze)
      {
        if (check == false)
        {
          check = o.pointInObstacle(cX,cY);
        }
      }
    return check;
  }
}
