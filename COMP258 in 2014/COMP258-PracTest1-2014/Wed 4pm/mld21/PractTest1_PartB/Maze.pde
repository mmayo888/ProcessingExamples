// A maze class consisting of a number of obstacles

class Maze {
  public ArrayList<Obstacle> obstacles_;

  public Maze() {
    obstacles_ = new ArrayList<Obstacle>();
  }

  public void draw() {
    for (Obstacle obs : obstacles_)
      obs.draw();
  }

  // adds an obstacle to the maze
  public void addObstacle(float x, float y, float w, float h) {
    color colour = color(0, 127, 127);
    obstacles_.add(new Obstacle(x, y, w, h, colour));
  }

  // Check whether the point is inside any obstacle contained in the maze
  public boolean checkForObstacleCollision(float x, float y) {
    // for each obstacle in the array list
    for (Obstacle obs : obstacles_)
      if (obs.pointInObstacle(x, y))   // if the point is within the current obstacle
        return true;                   // stop checking and say so
    return false;
  }
}

