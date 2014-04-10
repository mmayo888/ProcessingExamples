// A class representing a maze, which use many obstacle 


class Maze {  

  // The position of a obstacle in the maze
  public PVector position, size;

  // Collection of obstacle
  private ArrayList<Obstacle> obstacles;

  // The colour of the maze
  public color mazeColour=#F09F1D;

  // A constructor for the maze
  public Maze () {
    obstacles = new ArrayList<Obstacle>();
    //    Obstacle obstacle = new Obstacle();
  }

  // Draw method for the maze
  public void draw() {
    // Draw a obstacle on top
    rectMode(CORNER);
    fill(mazeColour);
    noStroke();
    rect(0, 0, 800, 50);
    // Draw a obstacle on bottom
    rectMode(CORNER);
    fill(mazeColour);
    noStroke();
    rect(0, 750, 800, 50);
    // Draw a obstacle on left
    rectMode(CORNER);
    fill(mazeColour);
    noStroke();
    rect(0, 0, 50, 800);
    // Draw a obstacle on right
    rectMode(CORNER);
    fill(mazeColour);
    noStroke();
    rect(750, 0, 50, 800);
    // Draw first obstacle on inside the maze
    rectMode(CORNER);
    fill(mazeColour);
    noStroke();
    rect(400, 0, 50, 400);
    // Draw second obstacle on inside the maze
    rectMode(CORNER);
    fill(mazeColour);
    noStroke();
    rect(300, 100, 300, 60);
    // Draw third obstacle on inside the maze
    rectMode(CORNER);
    fill(mazeColour);
    noStroke();
    rect(100, 600, 600, 60);
    // Draw fourth obstacle on inside the maze
    rectMode(CORNER);
    fill(mazeColour);
    noStroke();
    rect(250, 200, 30, 700);
  }


  // Method to add obstacle
  public void addObstacle(float x, float y, float w, float h) {
    Obstacle obs = new Obstacle (x, y, w, h);
    obstacles.add(obs);
  }

  // Method to check for obstacle collision
  //public void checkForObstacleCollision(float x, float y) {
  //  PVector point = new PVector(x, y);
  //  float distance = point.dist(position);
  //  if (distance<=size/2) return true;
  //  else return false;
  //}
}

