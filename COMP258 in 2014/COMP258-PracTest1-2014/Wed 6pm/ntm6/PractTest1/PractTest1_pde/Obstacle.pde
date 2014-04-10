class Obstacle {
  
  public PVector pos_;
  public PVector size_;
  public color obColour_;
  
  public Obstacle(PVector pos, PVector size, color obColour)
  {
    pos_ = pos;
    size_ = size;
    obColour_ = obColour;    
  }
  
  public void draw()
  {
    rectMode(CENTER);
    fill(obColour_);        
    rect(pos_.x,pos_.y,size_.x,size_.y);  
  }
  public boolean pointInObstacle(float x, float y)
  {    
    float xpos = pos_.x;
    float ypos = pos_.y;
    return x>=xpos-size_.x/2 && x<=xpos+size_.x/2
      && y>=ypos-size_.y/2 && y<=ypos+size_.y/2;
  }
}
  
