class Obstacle{


float _positionx;
float _positiony;
float _sizex;
float _sizey;
color _color;


public Obstacle(float x,float y,float w,float h){

_positionx = x;
_sizex = w;

_positiony = y;
_sizey = h;
_color = color(#DE2B2B);
}

public void drawObstacle(){
stroke(255);
fill(_color);
rect(_positionx,_positiony,_sizex,_sizey);
}

public boolean pointInObstacle(float x, float y){

    if(x>=_positionx && x<=_positionx+_sizey
      && y>=_positiony && y<=_positiony+_sizey){
    return true;
      }
      else{
      return false;
      }
      
  }


  
}











