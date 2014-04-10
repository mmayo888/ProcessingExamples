class Maze {
 private ArrayList<Obstacle> oList;
 
 //Constructor
 public Maze()
 {
   oList = new ArrayList<Obstacle>();
 }
 
//addObstacle Method
//public void addObstacle(int x, int y)
//{
//  oList.add(new Obstacle(x, y));
//}

//Draw method
 public void drawMaze()
 {
  for (Obstacle o: oList)
 {
  o.drawObstacle();
 } 
 }
}

