// Name: Hamish Monks
// SID: 1131607

class Obstacle {
  final color COLOUR = 0;

  private PVector position;
  private PVector size;

  public Obstacle() {
    position = new PVector(400, 400);
    size = new PVector(400, 400);
  }

  public void draw() {
    rectMode(CENTER);
    fill(COLOUR);
    stroke(0);
    rect(position.x, position.y, size.x, size.y);
  }

  public boolean pointInObstacle(float x, float y) {
    return x >= position.x - size.x/2 && x <= position.x + size.x/2
      && y >= position.y - size.y/2 && y <= position.y + size.y/2;
    }
  }

