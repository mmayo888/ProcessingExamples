class Obstacle 
{
private PVector _location ;

 private   color _recColor ;
 private final int SIZE = 50 ;
  
  
  public void myRec (int x, int y,  color recColor )
 {
   
  _location = new PVector (x,y);
 // _size = new PVector (s1,s2);
  _recColor = recColor ;
  
  
 } 
  
  
  public void drawRec  ()
  
  {
    rectMode (CENTER);
    fill (_recColor  ) ;
    rect ( _location.x,_location.y,SIZE,SIZE);
    
   
  }
  
  
}

