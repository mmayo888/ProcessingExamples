public int x;
public int y;

//creating the maze class
class Maze
{
 private ArrayList<Obstacle>_MazeList; //creating the maze array list
 
 //the maze constructor
 public Maze(int MazeList)
 {
  _MazeList = new ArrayList <Obstacle>();
 }

//methid to draw the maze
public void drawMaze()
{
  for (int i= 0; i<_MazeList.size();i++)
  {
  //_MazeList.get(i).drawObstacle();
   m = _MazeList.get(i);
    println(m.getInfo());
  }
  
}

//methods to add obstacle to the arraylist
public void AddObstacle(int x, int y, int w, int h)
{
  Maze m = new Maze(x,y,w, h);
  _MazeList.add(m);
}


 public boolean checkForObstacleCollision(float x, float y){
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=size/2) return true;
    else return false;
    
    
//   private boolean pointInObstacle(int _xpos, int _ypos) 
//  {
//    return _xpos>=position.x-_sizeX/2 && _xpos<=position.x+_sizeX/2
//      && _ypos>=position.y-_sizeY/2 && _ypos<=position.y+_sizeY/2;
//      trail=null;
//      println("game over!");
//  }


}
