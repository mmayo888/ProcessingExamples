class Maze {
  
  public ArrayList<obstacle> obstacles;
  
  public Maze(float x, float y, float rec_width, float rec_height) {
    
    obstacles = new ArrayList<obstacle>();
    obstacle obstacle1 = addObstacle(x, y, rec_width, rec_height);
    obstacles.add(obstacle1);
  }
  
  public addObstacle(float x, float y, float rec_width, float rec_height)
  {
    x = 100;
    y = 100;
    rec_width = 100;
    rec_height = 100;
  }
  public void draw()
  {
    obstacle.draw();
  }
}
