class Obstacle
{
  public final int IN_GAME = 0, GAME_OVER = 1;
  public PVector position, size;
  public color obstacleColour;

  private int state;
  public Obstacle(float x, float y, float w, float h)
  {
    position = new PVector(x, y);
    size = new PVector(w, h);
    obstacleColour = (#050505);
    state= IN_GAME;
  }

  public void draw()
  {
    rectMode(CENTER);  // Set rectMode to CENTER
    fill(obstacleColour);  // Set fill to gray
    rect(position.x, position.y, size.x, size.y);
  }
  private boolean pointInRegion(float x, float y) { 
    return x>=position.x-size.x/2 
      && x<=position.x+size.x/2 
      && y>=position.y-size.y/2 
      && y<=position.y+size.y/2;
  }
  public void collision(float x, float y)
  {
    if (pointInRegion(x, y)) { 
      state = GAME_OVER;
      println("Game Over");
      trail = null;
    }
  }
}

