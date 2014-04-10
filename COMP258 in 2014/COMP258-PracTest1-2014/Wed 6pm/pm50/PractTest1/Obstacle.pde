class Obstacle
{
  //declaring variables for drawin obstacle
  private PVector obstaclePos;
  private PVector obstacleSize;
  private color obstacleColor;
  
  public boolean collision = false;
  
  
 //obstacle class constructor passed values and assigning appropriatly
 public Obstacle(int x, int y, color obstacleColor, int obstacleWidth, int obstacleHeight)
{
 //assign values
  obstaclePos = new PVector(x,y);
  obstacleSize = new PVector(obstacleWidth, obstacleHeight);
  obstacleColor = obstacleColor;
  
} 

//draw method drawing the obstacle
public void draw()
{
  //obstacle properties
  rectMode(CORNER);
  fill(obstacleColor);
  stroke(#000000);
  //drawing obstacle on sketch
  rect(obstaclePos.x, obstaclePos.y, obstacleSize.x, obstacleSize.y);
  
}

//point in token method which checks the position of cursor against the position of obstacle

//  public boolean pointInToken(int x, int y)
//  {
//    
//    PVector point = new PVector(x,y);
//  
//      if((point.x >= obstaclePos.x) && (point.x <= (obstaclePos.x + obstacleSize.x)))
//      {
//        if((point.y >= obstaclePos.y) && (point.y <= (obstaclePos.y + obstacleSize.y)))
//        {
//         collision = true;
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
//  }
  
}
  

