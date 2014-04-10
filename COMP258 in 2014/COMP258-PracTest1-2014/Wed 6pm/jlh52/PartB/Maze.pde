

class Maze
{
 private ArrayList<Maze> _objectList;
 
 public Maze()
{
}
void addObstacle(float x, float y, float w, float h)
{
 _objectList = new ArrayList<Obstacle>();
  for(int i = 0; i <= 20; i++)
  {
    Obstacle m = new Obstacle (random(0,100), random(0, 100), random(0,100), random(0,100));
    _objectList.add(m);
  }
}
public void drawMaze()
{
  for (int i = 0; i <_objectList.size(); i++)
  {
    _objectList.get(i).draw (Obj);
  }
}

void checkForObstacleCollision(float x, float y)
{
  
}



