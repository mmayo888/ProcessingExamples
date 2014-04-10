// A class representing an obstacle 

class Obstacle {
  // position and size of the obstacle as vectors
  public PVector position_, size_;
  // fill colour of the obstacle
  public color   colour_;

  // constructor for an obstacle
  public Obstacle(float x, float y, float oWidth, float oHeight, color col) {
    this.position_  = new PVector(x, y);
    this.size_      = new PVector(oWidth, oHeight);
    this.colour_    = col;
  }

  // draw method of an obstacle
  public void draw() {
    noStroke();
    fill(colour_);
    rect(position_.x, position_.y, size_.x, size_.y);
  }

  // method to test whether a point lies with this obstacle
  // returns true if the point is inside, otherwise false
  public boolean pointInObstacle(float x, float y) {
    float inX = x - position_.x;        // get the point relative to the width of this obstacle
    if (inX >= 0 && inX <= size_.x) {   // if the point is relatively inside the width
      float inY = y - position_.y;      // get the point relative to the width of this obstacle
      if (inY >= 0 && inY <= size_.y)   // and if the point is relatively inside the height
        return true;                    // the point is inside the obstacle
    }
    return false;                       // the point is still outside this obstacle
  }
}

