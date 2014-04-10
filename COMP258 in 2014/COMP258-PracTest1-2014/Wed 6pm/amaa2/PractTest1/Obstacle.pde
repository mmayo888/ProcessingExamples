class obstacle {
 private PVector position;
 private PVector size;
 
 public color obcolorColor;
              
 
 
 public obstacle (float x, float y, float width, float height , color obcolorColor)
 {
   position  =  new PVector (x,y);
   size = new PVector (width, height);
   position.x = x;
   position.y = y;
   size.w = width;
   size.h =height;
   this.obcolorColor=obcolorColor;
  
 }
 
 
 public void draw () {
rectMode(CENTER);
 fill (obcolorColor);
 stroke(obcolorColo);
 rect (position.x, position.y, size.w, size.h);
 
 
 }
 
 public boolean pointObstract(float x, float y, size.w, size.h ){
    PVector point = new PVector(x,y, size.w, size.h);
    float distance = point.dist(position);
    if (distance<=size/2) return true;
    else return false;
  }
 
}
