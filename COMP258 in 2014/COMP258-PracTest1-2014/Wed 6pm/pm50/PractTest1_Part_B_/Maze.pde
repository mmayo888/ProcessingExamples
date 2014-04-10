class Maze
{
 //declaring arrylist of obstacles
 ArrayList<Obstacle> obstacleList;
 
 //int variables for obstacle positions
 private int mazex, mazey, mazew, mazeh;
 
 //maze class constructor given variables and assigning to class variables for arraylist input
 public Maze(int x, int y, int w, int h )
 {
  //assigning values given into constructor
  mazex = x;
  mazey = y;
  mazew = w;
  mazeh = h; 
   
 }
 
 
 //steup method
 void setup()
 {
   //declaring the arraylist of obstacles
   obstacleList= new ArrayList<Obstacle>();
   
   
 }
 
 //draw method
 public void draw()
 {
   //setting the background
   background(#FFFFFF);
   
   //looping through the arraylist of obstacles
   for(int index = 0; index < obstacleList.size(); index++)
   {
     //drawing the obstacles at current index position of the arraylist
     obstacleList.get(index).draw(Obstacle);
   }
   
 }
 
 //add obstacle to the array list method
 public void addObstacle(int x, int y, int w, int h)
 {
   //adding obstacle to the arraylist
   obstacleList.add(new Obstacle(x, y, w, h));
   
   
   
 }
 
 //method checking for the obstacle collision
 
// public void checkForObstacleCollision(int x, int y)
// {
//   
//   for(int index = 0; index < obstacleList.size(); index++)
//   {
//     if ((x => obstacleList.get(index).x) && (y => obstacleList.get(index).y))
//     {
//        if  ((x <= (obstacleList.get(index).x + obstacleList.get(index).w)) && (y <= (obstacleList.get(index).y + obstacleList.get(index).y)))
//        {
//          return true; 
//        }
//     }
//     
//     else
//     {
//        return false; 
//     }
//   }
//   
//   
// }
 
 
  
}
