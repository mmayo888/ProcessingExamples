class Maze
{
  private ArrayList<Obstacle> obstacles;
  
  public Maze()
  {
    obstacles = new ArrayList<Obstacle>();
  }
  
  public void draw()
  {
    for (Obstacle ob: obstacles)
    {
      ob.draw();
    }
  }
  public void addObstacle(int x, int y, int w, int h) 
  {
    PVector obstPos = new PVector(x,y);
    PVector obstSize = new PVector(w,h);
    Obstacle ob = new Obstacle(obstPos, obstSize, #8E1F0B);
    obstacles.add(ob);
  }   
  public boolean checkForObstacleCollsion(float x, float y) 
  {
    boolean inOb = false;
    for (Obstacle ob: obstacles)
    {
      if (ob.pointInObstacle(x,y)==true) 
      {
        inOb = true;
      }  
    }
    return inOb;  
    
  }
}
