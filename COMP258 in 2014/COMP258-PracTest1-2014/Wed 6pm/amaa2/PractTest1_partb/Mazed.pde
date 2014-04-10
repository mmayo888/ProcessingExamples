class Mazed {
 private ArrayList<PVector> obstacle;




 public Mazed () {
 obstacle = new  ArrayList<PVector>();
 
 }
 
  public void draw() {
    stroke(obstacle);
   
    for (int index=1; index<  obstacle (); index++) {
      PVector position = obstacle. get(index-1);
      PVector size =obstacle. get(index);
      rect(position.x, position.y,  w, h);
    }
    
    public void addObstacle(float x, float y , w, h) {
     obstacles.add( new PVector(x,y, w, h) ); 
  }
}
}
