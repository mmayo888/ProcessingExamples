//create a class to represent the maze

class Maze
{

  //a list of obstacles

  private ArrayList<Obstacle>_obstacleList;


  //constructor to create the array list
  public Maze()
  {
    _obstacleList = new ArrayList<Obstacle>();
  }

  //adds a new obstacle to the array list
  public void addObstacle(int x, int y, int w, int h)
  {
    Obstacle o = new Obstacle(x, y, w, h, #3861C6);
    _obstacleList.add(o);
  }

  //draws each obstacle in the list
  public void drawMaze()
  {
    for (Obstacle o: _obstacleList)
    {
      o.drawObstacle();
    }
  }

  //checks for a collision between the mouse and the maze
  public boolean checkForObstacleCollision(int x, int y)
  {   
    for (Obstacle o: _obstacleList)
    {
      if (o.pointInObstacle(x, y) == true)
      {
        return true;
      }
      else
      {
        return false;
      }
    }
  }
}


