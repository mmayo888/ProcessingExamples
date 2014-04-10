class Maze
{
  
  public ArrayList<Obstacle> _obstacleList;
  private final color OBSTACLE_COLOR = #17A027;
  
  public Maze()
  {
    _obstacleList = new ArrayList<Obstacle>(6);
  }

//public void addObstacle(int x, int y)
//  {
////    x = random(0,width);
////    y = random(0,height);
//    
//    w = random(100,200);
//    h = random(300,400);
//    
//    Obstacle o = new Obstacle (#17A027, x, y, (int)w, (int)h);
//    
//    _obstacleList.add(o);
//  }


public void addObstacle(float x, float y, float w, float h)
  {
    x = random(0,width);
    y = random(0,height);
    
    w = random(100,200);
    h = random(300,400);
    
    Obstacle o = new Obstacle (#17A027, x, y, w, h);

    _obstacleList.add(o);

  }

  public void drawMaze()
  {
    for(int i=0; i<_obstacleList.size(); i++)
    {
      _obstacleList.get(i).drawObstacle();
      
    }
  }



public void checkForObstacleCollision()
  {
  }
}

