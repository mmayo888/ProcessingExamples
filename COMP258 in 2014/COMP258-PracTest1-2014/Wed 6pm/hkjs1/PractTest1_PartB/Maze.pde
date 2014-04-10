class Maze extends Obstacle {
  private ArrayList obstacles;
  
  
  public Maze(float x, float y, float h, float w){
    super(x, y, h, w);
    obstacles = new ArrayList<Obstacle>();
  }
  
  public void addObstacle(float x, float y, float h, float w){
     for(int i = 0; i < 50; i ++){
     Obstacle obst = new Obstacle(x,y,w,h);
     obstacles.add(obst);     
   }
  }
  
  public boolean checkForObstacaleCollision(float x, float y){
    
    for( int i = 0; i < obstacles.size(); i++){
     check = (Obstacle)obstacles.get(i);
     check.pointInObstacle(x,y); 
    }
  }
  
}

