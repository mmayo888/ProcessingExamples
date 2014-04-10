class Obstacle
{
  // variables for obstacle
  private PVector obstaclePos;
  private PVector obstacleSize;
  private color obstacleColor;
  
  
 //constructor which is passed values and assigns to the appropriate variables within the class
 public Obstacle(int x, int y, color obstacleColor, int obstacleWidth, int obstacleHeight)
{
 //assigning the values
  obstaclePos = new PVector(x,y);
  obstacleSize = new PVector(obstacleWidth, obstacleHeight);
  obstacleColor = obstacleColor;
  
} 

//draw method to draw obstacle
public void draw()
{
  //setting obstcale properties
  rectMode(CORNER);
  fill(obstacleColor);
  stroke(#000000);
  //drawing the obstacle
  rect(obstaclePos.x, obstaclePos.y, obstacleSize.x, obstacleSize.y);
  
}

//point in token method check to make sure that the position of cursor is not within the obstacle

//  public boolean pointInToken(int x, int y)
//  {
//    boolean collision = false; 
//    PVector point = new PVector(x,y);
//  
//      if((point.x >= obstaclePos.x) && (point.x <= (obstaclePos.x + obstacleSize.x)))
//      {
//        if((point.y >= obstaclePos.y) && (point.y <= (obstaclePos.y + obstacleSize.y)))
//        {
//          collision = true;
//          
//         return  collision;
//        }
//      }
//      
//      else
//      {
//        
//       return  collision; 
//      }
  }
  
 
  

