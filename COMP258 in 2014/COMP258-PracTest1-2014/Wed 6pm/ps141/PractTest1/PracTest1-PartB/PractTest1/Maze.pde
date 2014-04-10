class Maze {

  //Collection of Obstacle objects
 ArrayList<Obstacle> _obstacleArray;
 
 //Instantiation of the Maze
 public Maze( ) {
 _obstacleArray = new ArrayList<Obstacle>();
 }
 
 void draw(){
   for(Obstacle i : _obstacleArray) {
     i.draw();
   }
 }
 
 //Adds an Obstcable object to the list
 public void addObstacle(int x, int y, int obWidth, int obHeight, color colorOb) {
   _obstacleArray.add(new Obstacle(x,y,obWidth,obHeight, colorOb));
 }
 
 //Loops through the array of Obstacles and returns a boolean
 public boolean checkForObstacleCollision(float x, float y) {
  for(Obstacle i : _obstacleArray) {
     if (i.pointInObstacle(x,y))
     return true;
   }
   return false;
 }
 
}
