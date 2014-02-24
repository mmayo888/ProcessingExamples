class Particle {

  // Particles have a position and velocity
  protected PVector position, velocity;

  // Particles have a size
  public float size;

  // Particles have a colour
  public color col;

  // Particles have a time to live
  protected int ttl;

  // Particles have constructors that set the initial position/velocity
  public Particle(float x, float y, float vx, float vy) {
    position = new PVector(x, y);
    velocity = new PVector(vx, vy);
    size = width/50;
    col = #FFFFFF;
    ttl = 255;
  }

  public Particle(float x, float y) {
    this(x, y, 0, 0);
  }  

  // Methods to get/set the position
  public void setPosition(float x, float y) {
    position.x=x;
    position.y=y;
  }
  public PVector getPosition() {
    return position.get();
  }

  // Methods to get/set the velocity
  public void setVelocity(float x, float y) {
    velocity.x=x;
    velocity.y=y;
  }
  public PVector getVelocity() {
    return velocity.get();
  }

  // Particles are dead if the ttl has expired
  public boolean isDead() {
    return ttl<=0;
  }
  
  // Particles must be able to draw themselves if they are not dead
  public void draw() {
    if (!isDead()) {
      ellipseMode(CENTER);
      noStroke();
      fill( color( red(col), green(col), blue(col), ttl ) );
      ellipse(position.x, position.y, size, size);
    }
  }

  // Particles move according to the laws of physics if they are not dead
  public void move() {
    if (!isDead()) {
      position.add(velocity);
      ttl -= 2;
    }
  }
  
  // A method jitter the particle's velocity by a certain amount
  public void jitterVelocity(float howMuch) {
      velocity.rotate( howMuch/2 - random(howMuch) );
  }


}

