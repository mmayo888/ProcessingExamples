class HoseParticleEmitter extends ParticleEmitter {

  // Gravitational acceleration constant in pixels per frame
  public float accelerationDueToGravity = 0.25;
  
  // Hose emitter have an orientation
  public float orientation;

  // Jitter amount for new particles
  public float jitterAmount=PI/8;

  // Constructor
  public HoseParticleEmitter(float x, float y, float orientation) {
    super(x, y);
    this.orientation=orientation;
  }

  // Method to create a new particle
  protected Particle createParticle() {
    // Create random direction for the velocity
    PVector velocity = PVector.fromAngle(orientation);
    // Scale the velocity appropriately
    velocity.mult(initialParticleVelocityMagnitude);
    // Jitter the velocity
    velocity.rotate( jitterAmount/2 - random(jitterAmount) );
    // Create the particle
    Particle particle = new Particle(position.x, position.y, velocity.x, velocity.y);
    // Done
    return particle;
  }

  // Extension of the uupdate method, to apply grapvity to the particles
  public void update() {
    // Update as normal
    super.update();
    // Apply gravitational acceleration to the particles
    for (Particle particle: particles) {
      PVector velocity = particle.getVelocity();
      velocity.y += accelerationDueToGravity;
      particle.setVelocity(velocity.x, velocity.y);
    }
  }
}

