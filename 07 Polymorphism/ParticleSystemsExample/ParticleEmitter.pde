class ParticleEmitter {

  // Emitters have a position and orientation
  protected PVector position;
  public float orientation;
  
  // Emitters have an initial particle velocity magnitude
  public float initialParticleVelocityMagnitude;
  
  // List of particles created by the emitter
  protected ArrayList<Particle> particles;

  // Constructor
  public ParticleEmitter(float x, float y, float orientation) {
    particles=new ArrayList<Particle>();
    position = new PVector(x,y);
    this.orientation=orientation;
    initialParticleVelocityMagnitude=4;
  }

  // Draw method
  public void draw() {
    // Draw the particles
    for (Particle particle: particles)
      particle.draw();
  }

  // Update method
  public void update() {
    // Move all the particles
    for (Particle particle: particles)
      particle.move();
    // Remove dead particles
    ArrayList<Particle> deadParticles = new ArrayList<Particle>();
    for (Particle particle: particles)
      if (particle.isDead()) deadParticles.add(particle);
    particles.removeAll(deadParticles);
    // Create new particles with probability 10% per frame
    if (random(1)<0.1) {
      // Create random direction for the velocity
      PVector velocity = PVector.fromAngle(orientation);
      // Scale the velocity appropriately
      velocity.mult(initialParticleVelocityMagnitude);
      // Create and jitter the particle
      Particle particle = new Particle(position.x,position.y,velocity.x,velocity.y);
      particle.jitterVelocity(PI/8);
      // Add the particle to the list of particles
      particles.add(particle);
    }
  }
}

