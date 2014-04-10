class Maze{
  //to store the obstaclesin an array list
  private ArrayList<PVector> Obstacles;
  //constructor for this class
  public Meze(){
    //Create a list of obstacles
     Obstacles = new  ArrayList<PVector>();
  }
  public void draw(){
    for (int ob=1; ob<Obstacles.size(); ob++) {
       rect(position.x,position.y,height,width);
    }
  }
    public void addObstacle(){
      for (int ob=1; ob<Obstacles.size(); ob++) {
      PVector x = points.get(ob-1);
      PVector y = points.get(ob);
      PVector w = points.get(ob-1);
      PVector h = points.get(ob);
       rect(position.x,position.y,height,width);
    }
    
    
  }
    public boolean checkForObstacleCollosion(){
      PVector position=new PVector(x,y);
      if (point=x || point =y)
        return true;
       else return false;
    
  }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
}
