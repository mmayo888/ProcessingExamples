class obstacle
{
  public PVector position1;
  public float rec_width, rec_height;
  public color rec_color;
  public int stroke_weight;
  
  public obstacle (float x, float y, float rec_width, float rec_height, color rec_color)
  {
    
    position1 = new PVector(x,y);
    this.rec_width=rec_width;
    this.rec_height=rec_height;
    this.rec_color=rec_color;
    stroke_weight = 2;
  }
  
  public void draw()
  {
    
    rectMode(CENTER);
    stroke(#0A0707);
    strokeWeight(stroke_weight);
    fill(rec_color);
    rect(position1.x,position1.y,rec_width,rec_height);
    
  }
  public boolean pointInObstacle(float x, float y){
    PVector point = new PVector(x,y);
    float dist = point.dist(position1);
    
    if (dist < rec_width/2 && dist < rec_height/2) return true;
    else return false;
  }
}
