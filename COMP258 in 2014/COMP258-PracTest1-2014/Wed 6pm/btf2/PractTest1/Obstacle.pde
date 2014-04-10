class Obstacle{


PVector _position;
PVector _size;
color _color;


public Obstacle(){

_position = new PVector(300,500);
_size = new PVector(150,100);
_color = color(#DE2B2B);
}

public void drawObstacle(){
stroke(255);
fill(_color);
rect(_position.x,_position.y,_size.x,_size.y);
}

public boolean pointInObstacle(float x, float y){

    if(x>=_position.x && x<=_position.x+_size.y
      && y>=_position.y && y<=_position.y+_size.y){
      return true;
      }
      else{
      return false;
      }
      
  }


  
}











