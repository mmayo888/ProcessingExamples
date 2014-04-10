class Obstacle 
{
  private PVector _pos;
  private PVector _size;
  private color _pColor;

  public Obstacle (int x, int y, int w, int h, color pColor)
     {
       _pos = new PVector(x, y);
       _size = new PVector(w, h);
       _pColor = pColor;
     }
     
     public void drawObstacle()
       {
          rectMode(CENTER);
          fill(_pColor);
          rect(_pos.x, _pos.y, _size.x, _size.y); 
      
       }
       
       private boolean pointInObstacle(int x, int y)
       {
          return x>=_pos.x - _size.x/2 && x<= _pos.x + _size.x
          && y>= _pos.y - _size.y/2 && y<= _pos.y +  _size.y/2;
        
       } 
}

