class Maze
{
  ArrayList<Obstacle> obstacles;

  final int NUM_OBSTACLES = 6;

  color colour=#000000;
  int _positionX;
  int _positionY;
  int sizeX;
  int sizeY;
  PVector position;
  PVector size;

  void Maze(int _positionX, int _positionY, int _sizeX, int _sizeY)
  {
    position.x = _positionX;
    position.y = _positionY;
    sizeX = _sizeX;
    sizeY = _sizeY;
    obstacles = new ArrayList<Obstacle>();
  }

  void draw(int _positionX, int _positionY, int _sizeX, int _sizeY)
  {
    for (Obstacle o: obstacles)
    {
      o.draw(_positionX, _positionY, _sizeX, _sizeY);
      //      fill(colour);
      //      rect(_positionX, _positionY, _sizeX, _sizeY);
    }
  }

  void addObstacle(int _positionX, int _positionY, int _sizeX, int _sizeY)
  {
    for (int i=0; i<NUM_OBSTACLES;i++)
    {
      obstacles.add(new Obstacle(_positionX, _positionY, _sizeX, _sizeY));
    }
  }

  public boolean checkForObstacleCollision(float x, float y)
  {
    PVector point = new PVector(x, y);
    float xLength = _positionX+sizeX;
    float yLength = _positionY+sizeY;
    if ((point.x>_positionX)&&(point.y>_positionY)&&(point.x<xLength+_positionX)&&(point.y<yLength+_positionY))
    {
      return true;
    }
    else return false;
  }
}

