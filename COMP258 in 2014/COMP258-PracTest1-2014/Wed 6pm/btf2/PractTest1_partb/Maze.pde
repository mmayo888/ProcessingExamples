class Maze{
ArrayList<Obstacle> maze; 



public Maze(){
maze = new ArrayList<Obstacle>();
addObstacle(100,100,50,150);
addObstacle(200,100,50,150);
addObstacle(300,300,50,150);
addObstacle(400,200,50,150);
addObstacle(500,400,50,150);
addObstacle(600,210,50,150);
}

public void addObstacle(float x,float y, float w, float h){

  Obstacle o = new Obstacle(x,y,w,h);
  maze.add(o);


}



public void drawMaze(){


for (Obstacle o: maze)
    o.drawObstacle();
        

}



public boolean checkForObstacleCollision(float x, float y){
  boolean z = false;
  
  for(Obstacle o: maze){
  
  if(o.pointInObstacle(x,y) == true){
   z = true;
  
   }
   
   

}
return z;
}
}
