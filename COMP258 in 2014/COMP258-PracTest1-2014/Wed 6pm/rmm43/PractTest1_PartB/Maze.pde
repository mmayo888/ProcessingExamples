//Rebekka Marsh
//1162352
//PracTest1_PartB


public class Maze
{
  //arraylist of obstacles
  ArrayList<Obstacle> _obstacleList;

  //constructor for the maze
  public Maze()
  {
    _obstacleList = new ArrayList<Obstacle>();
  }


  //adds obstacle to arraylist using x,y, width and height values passed in
  public void addObstacle (int x, int y, int w, int h)
  {

    //adds obstacle to arraylist
    _obstacleList.add(new Obstacle(x, y, w, h));
  }

  //boolean method that checks if the mouse point has collided with an obstacle in the maze
  public boolean checkForObstacleCollision(int x, int y)
  {
    //sets the boolean to false
    boolean obstacleCheck = false;
    //loops through arraylist
    for (Obstacle o:_obstacleList)
    {
      //if the obstaclecheck is already true (ie the mousepoint is on one of the obstacles in the
      //array list already, the boolean is returned
      if (obstacleCheck == true)
      {
        return obstacleCheck;
      }
      //otherwise
      else
      {
        //if the mousepoint is not on the current obstacle in the arraylist being checked
        if (o.pointInObstacle(x, y)==false)
        {
          //set obstaclecheck to false
          obstacleCheck = false;
        }
        //else (the mousepoint IS on the obstacle)
        else
        {
          //set obstaclecheck to true
          obstacleCheck = true;
        }
      }
    }
    //return obstaclecheck boolean
    return obstacleCheck;
  }

  //draw maze method
  public void drawMaze()
  {
    //loops through each obstacle in the arraylist
    for (Obstacle o:_obstacleList)
    {
      //draws the obstacle
      o.drawObstacle();
    }
  }
}

