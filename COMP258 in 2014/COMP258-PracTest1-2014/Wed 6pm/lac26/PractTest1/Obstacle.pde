class obstacle {

  public color obstaclecolour;
  public PVector obstacleposition;
  public PVector obstaclesize;
  public PVector pointinobstacle;
  
  public obstacle (color ocolour, float x, float y, float w, float h){
    obstaclecolour = ocolour;
    obstacleposition = new PVector(x, y);
    obstaclesize = new PVector(w, h);
  }
  
  public void pointinobstacle(float x, float y){
    if (mouseX >= obstacleposition.x-100 && mouseX <= obstacleposition.x+100 && mouseY >= obstacleposition.y-25 && mouseY <= obstacleposition.y+25){
      trail=null;
      println("Game Over!!");
    }
  }

  public void drawobstacle() {
    fill(obstaclecolour);
    rectMode(CENTER);
    rect(obstacleposition.x, obstacleposition.y, obstaclesize.x, obstaclesize.y);
  }
}

