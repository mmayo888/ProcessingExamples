class obstacle {
 private PVector position;
 private PVector size ;
 
 public color obcolorColor;
              
 
 
 public obstacle (float x, float y , width w, height h , color obcolorColor)
 {
   position  =  new PVector (x,y);
   size = new PVector (width, height);
   position.x = x;
   position.y = y;
   w = width;
   h = height;
   this.obcolorColor=obcolorColor;
  
 }
 
 
 public void draw () {
rectMode(CENTER);
 fill (obcolorColor);
 obcolorColor = #D3B39A ;

 rect (position.x, position.y,  w, h);
 
 
 }
 

 
}
