public class Obstacles {
      
    // The position of the Obstacles and storex nad y position
     public PVector position;
     //to store the size(width, height) of the obstacles using the PVector 
     public PVector size;
     // to define the colour property
     public color colour;
  
  //constructor
  public Obstacles(float x,float y, int width, int height, color colour){
    position = new PVector(x,y);
    size= new PVector(width,height);
    colour= #EA0202; 
  }
public void drawObstacle(){
 ellipseMode(CENTER);
 fill(colour);
 rect(position.x,position.y,height,width);
}
public void pointInObstacles(){
  PVector position=new PVector(x,y);
  if (point<=x || point <=y)
  return true;
}
  
  
  
  
  
  
  
  
  
  
  
  
  
}
