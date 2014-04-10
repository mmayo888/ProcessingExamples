class Maze
{
  private ArrayList<PVector> _obstacleList;
  
  public Maze()
 {
   _obstacleList = new ArrayList<PVector>();
 } 
 
 public void mazeDraw()
 {
   for((PVector)Obstacle o : _obstacleList)
   {
     o.drawObstacle(); 
   }
 }
 
 public void addObstacle(float x, float y)
 {
   _obstacleList.add(new PVector(x,y)); 
 }
}

