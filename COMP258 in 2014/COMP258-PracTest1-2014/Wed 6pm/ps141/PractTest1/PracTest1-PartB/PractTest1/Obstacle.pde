class Obstacle {
  
  //X and Y positioning of Obstacle object
  PVector _position;
  
  //Width and Height positioning of Obstacle object
  PVector _size;
  
  //Color of the Obstacle Object
  color _color;
  
  //Instantiation of the Obstacle Object
  public Obstacle(int x, int y, int obWidth, int obHeight, color obColor) {
    _position = new PVector(x, y); 
    _size = new PVector(obWidth, obHeight); 
    _color = obColor;
    
  }
  
  public void draw() {
    drawPageOutline();
  }
  
  //Draws the rectangle that represents the page
  private void drawPageOutline() {
   fill(_color);   
    rect(_position.x, _position.y, _size.x, _size.y);   
  }
  
  //Checks if the mouse coordinates are inside any of the obstacles
  public boolean pointInObstacle(float x, float y) {   
    return  ((x >= _position.x && x <= _position.x + _size.x) && (y >= _position.y && y <= _position.y + _size.y));
  }
}
