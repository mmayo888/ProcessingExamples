// A maze is essentially a collection of obstacles

class Maze {

  // The obstacles
  private ArrayList<Obstacle> obstacles;

  // Constructor
  public Maze() {
    // Create the list of obstacles
    obstacles = new ArrayList<Obstacle>();
    // Create the maze
    addObstacle(0,   0,   800, 50);
    addObstacle(0,   750, 800, 50);
    addObstacle(0,   50,  50,  700);
    addObstacle(750, 50,  50,  700);
    addObstacle(600, 300, 50,  200);
    addObstacle(400, 375, 200, 50);
    addObstacle(200, 50,  50,  200);
    addObstacle(200, 350, 100, 100);
    addObstacle(150, 550, 400, 75);
  }

  // Draw method -- simply draw all the obstacles
  public void draw() {
    for (Obstacle obstacle:  obstacles)
      obstacle.draw();
  }

  // Method to add an obstacle
  public void addObstacle(float x, float y, float w, float h) {
      obstacles.add(new Obstacle(x,y,w,h));
  }

  // Method to check to see if a point is colliding with any of the obstacles
  // in this maze.
  // Returns true if it is.
  public boolean checkForObstacleCollision(float x, float y) {
    for (Obstacle obstacle:  obstacles)
      if (obstacle.pointInObstacle(x, y))
        return true;
    return false;
  }
}

