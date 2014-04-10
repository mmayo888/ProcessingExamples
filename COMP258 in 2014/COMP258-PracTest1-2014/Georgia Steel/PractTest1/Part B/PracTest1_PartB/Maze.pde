//Declare number of obstacles
final int NUM_OBSTACLES = 6;
//A class representing the maze
class Maze
{
  //References an array of obstacles
  private ArrayList <Obstacle> _obList;


//Constructor for the maze
  public Maze()
  {
    //Creates the array of obstacles
    _obList = new ArrayList<Obstacle>();
  }

//Creates a method to add obstacles to the array
  public void addObstacle(float x, float y, float w, float h)
  {
    _obList.add(new Obstacle(x, y, w, h));
    
  }

//Draws all the obstacles in the arraylist
  public void draw()
  {
    for (Obstacle o: _obList)
    {
      
      o.draw();
      
    }
  }
  
  //Iterates through the array and checks whether the mouse has 
  //passed through any of the obstacles. If so, returns true
  public boolean checkForObstacleCollision(float x, float y)
  {
      for(int i=0; i<NUM_OBSTACLES; i++)
      {
        
        PVector point = new PVector(x, y);
        float distance = point.dist(_obList.position);
        if(x>=position.x-size.x/2 && x<=position.x+size.x/2
        && y>=position.y-size.y/2 && y<=position.y+size.y/2) 
        return true;
        else return false;
      }
  }
  
}
