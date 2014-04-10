class Maze
{
private ArrayList<Obstacle> obstacleObjects;
public Maze()
{
 obstacleObjects = new ArrayList<Obstacle>(); 
}
public void draw()
{
 for(Obstacle o:obstacleObjects)
{
 o.draw();
}
}
public void addObstacle(int x, int y, int w, int h)
{
  Obstacle obst = new Obstacle(x,y,w,h);
  obstacleObjects.add(obst);
}
public boolean checkForObstacleCollision(int x, int y)
{
 boolean collision = false;
 for(Obstacle o:obstacleObjects)
 {
  if(o.pointInObstacle(x,y))
  {
  collision = true; 
  }
 }
 return collision;
}

}

