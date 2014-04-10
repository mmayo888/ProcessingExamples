
class Maze {


  // The colour of the Maze
  public color MazeColour;

  // The position of the Maze
  public PVector position;

  // The size of the Maze
  public int size;
  //an arraylist for the obstacle 
 private ArrayList<PVector> Obstacle;

  // The weight of the Maze
  public int MazeStrokeWeight;
  public int MazeStrokeHeight;

  // A constructor for the Maze
  {
    position = new PVector(x, y);
    size = 100;
    MazeStrokeWeight = 20;
  }
    // Draw method for the Maze
  public void draw() {
    stroke(MazeColour);
    strokeWeight(MazeStrokeWeight);
    for (int index=1; index<points.size(); index++) {
      PVector fromPoint = points.get(index-1);
      PVector toPoint = points.get(index);
      line(fromPoint.x, fromPoint.y, toPoint.x, toPoint.y);
  }
  
  public void addObstacle(); {
   parameters(X,Y,w,h);
  }
  //method for the checkForObstacleCollision
  public void checkForObstacleCollision (); {
  }
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=size/2) return true;
    else return false;
  }
}

