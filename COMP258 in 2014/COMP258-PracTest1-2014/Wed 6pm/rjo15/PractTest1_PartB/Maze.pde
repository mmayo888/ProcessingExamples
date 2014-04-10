class Maze
{
  Obstacle o1;
  public ArrayList <Obstacle> obstacles;
  
  Maze()
  {
    obstacles = new ArrayList <Obstacle>();
    addObstacle();
  }
  
  
  public void  addObstacle()
  {
    println("Add called");
    o1 = new Obstacle (0,0,800,20,#030000);
    obstacles.add(o1);
    o1 = new Obstacle (0,0,20,800,#030000);
    obstacles.add(o1);
     o1 = new Obstacle (0,780,800,20,#030000);
    obstacles.add(o1);
    o1 = new Obstacle (780,0,20,800,#030000);
    obstacles.add(o1);
    o1 = new Obstacle (200,350,350,200,#030000);
    obstacles.add(o1);
    o1 = new Obstacle (200,20,550,80,#030000);
    obstacles.add(o1);
  }
  
  
 public void draw()
  {
    for(Obstacle o:obstacles)
    {
      o.draw();
    }
    
  }
  
  
}

