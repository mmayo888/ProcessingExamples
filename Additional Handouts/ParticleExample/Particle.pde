class Particle {

  public PVector position;
  public PVector velocity;
  public PVector acceleration;

  public float groundLevel;

  public Particle() {
     position = new PVector(0,0);
     velocity = new PVector(0,0);
     acceleration = new PVector(0,0); 
     groundLevel=400;
  }

  public void draw() {
    ellipseMode(CENTER);
    fill(0);
    ellipse(position.x, position.y, 20, 20);
  }
  
  public void move() {   
     position.add( velocity );
     velocity.add( acceleration ); 
     if (position.y>=groundLevel) {
        position.y = groundLevel;
        velocity.y *= -0.8 ; 
     }
  }
  
}
