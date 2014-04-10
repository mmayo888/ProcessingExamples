// creats the obstacle class
class Obstacle {
  //setting the class properties
  private PVector position;
  private PVector size;
  public color obstacleColour = #37AA9A;
  //class constructor
  public Obstacle(float x, float y, float obstHeight, float obstWidth){
   position = new PVector (x,y);
   size = new PVector (obstHeight , obstWidth);
  }
  //class draw method
   public void draw(){
     // draws the obstacle
     rectMode(CENTER);
     fill(obstacleColour);
     stroke(1);
     strokeWeight(4);
     rect(position.x, position.y,size.x, size.y);
   }
   //checking to see if the point is inside the obstacle
   public boolean pointInObstacle(float x, float y){
    PVector obsticalPoint = new PVector(x,y);
    float distance = obsticalPoint.dist(position);
    if (distance<=size.y/2) return true;
    else return false;
   }
   
    
  }
