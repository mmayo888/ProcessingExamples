// A class representing a Obstacle, which is typically a start or
// end point 

class Obstacle {

  // The position of the Obstacle
   public PVector position;
  
   // The weight of the Obstacle 
  public int ObstacleWeight;
  
  // The size of the Obstacle
  public int size;
  
   // The weight of the Obstacle
  // public int ObstacleHeight;
  
  // The colour of the Obstacle
  public color ObstacleColour;
  
  // A constructor for the Obstacle
  public Obstacle(String text,color ObstacleColour, float x, float y) {
   
    this.ObstacleColour=ObstacleColour;
    position = new PVector(x, y);
    size = 75;
   
 
    ObstacleWeight = 10;
  }
// Draw method for the Obstacle
  public void draw() {
     ellipseMode(CENTER);
     stroke(ObstacleColour);
    strokeWeight(ObstacleWeight);
   
    noFill();
    ellipse(position.x, position.y, size, size);
  }
    
    
    public boolean pointInObstacle(float x, float y){
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=size/2) return true;
    else return false;
    }
  }


