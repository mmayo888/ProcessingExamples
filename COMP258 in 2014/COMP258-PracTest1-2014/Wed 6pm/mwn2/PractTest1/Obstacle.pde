//A class representing a single obstacle,
//a rectangle which blocks the player.

class Obstacle {
  //Declaring the PVectors for location, size, and colour
  public PVector ObsPosition;
  public PVector ObsSize;
  public color ObsColor;
  
  
  //Constructor for the obstacle
  public Obstacle(color ObsColor, float x, float y, float w, float h)
  {
    //location
    ObsPosition = new PVector(x, y);
    
    //width and height
    ObsSize = new PVector(w, h);
    
    //colour
    this.ObsColor = ObsColor;
  }

  public void draw(){
    
    //lets draw an obstacle
    rectMode(CENTER);
    //random colour
    fill(ObsColor);
    //black stroke, 1px wide
    stroke(0);
    strokeWeight(1);
    rect(ObsPosition.x, ObsPosition.y, ObsSize.w, ObsSize.h);    
    
  }
  
  //if the point is within the obstacle, return true.
  //If not, return false.   
  public boolean pointInObstacle(int x, int y){
    PVector point = new PVector(x,y);
    
    //find the edge of the obstacle, which should
    //be half the height and half the width from
    //the centre.
    
    PVector distance = point.dist(ObsPosition.x, ObsPosition.y);
    if (distance <= size /*(ObsSize.w/2, ObsSize.h/2)*/ );
    
    return true;

  }
  
}
