// Name: Hamish Monks
// SID: 1131607

class Maze {
  private ArrayList<Obstacle> obstacles;

  public Maze() {
    obstacles = new ArrayList<Obstacle>();
  }

  // Draws all obstacles in the maze
  public void draw() {
    for (Obstacle o: obstacles) {
      o.draw();
    }
  }

  // Create a new obstacle in the maze
  public void addObstacle(float x, float y, float w, float h) {
    Obstacle tempObstacle = new Obstacle(x, y, w, h);
    obstacles.add(tempObstacle);
  }

  // Loop for collision detection.
  // Returns true on the first instance of collision
  public boolean checkForObstacleCollision(float x, float y) {
    for (Obstacle o: obstacles) {
      if (o.pointInObstacle(x, y))
        return true;
    }
    return false;
  }
}

