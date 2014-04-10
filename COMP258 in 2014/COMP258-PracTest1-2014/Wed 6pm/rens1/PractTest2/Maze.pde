class Maze 
{
  public final int NUM_OBSTACLES = 6;
  ArrayList<Obstacle>  obstacles;

  public Maze()
  {
    obstacles = new ArrayList<Obstacle>();
  }
  public void draw()
  {
    for (Obstacle obstacle: obstacles)
      obstacle.draw();
  }

  public void addObstacle()
  {
    for (int i = 0; i<NUM_OBSTACLES; i++)
    {
      Obstacle obstacle = new Obstacle(random(200, 600), random(30, 600), random(50, 100), random(10, 75));
      obstacles.add(obstacle);
    }
  }
  public void checkForObstacles(float x, float y)
  {
    for (Obstacle obstacle: obstacles)
   obstacle.pointInRegion(x, y);
      println("Game Over");
     
  
    }
  }

  
