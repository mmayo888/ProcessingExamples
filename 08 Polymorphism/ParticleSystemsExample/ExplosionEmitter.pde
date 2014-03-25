class ExplosionEmitter extends ParticleEmitter {

  // Constructor
  public ExplosionEmitter(float x, float y) {
    super(x, y);
  }

  // Method to create a new particle
  protected Particle createParticle() {
    // Create random direction for the velocity
    PVector velocity = PVector.fromAngle(random(TWO_PI));
    // Scale the velocity appropriately
    velocity.mult(initialParticleVelocityMagnitude);
    // Create the particle
    Particle particle = new Particle(position.x, position.y, velocity.x, velocity.y);
    particle.agingRate=6;
    // Done
    return particle;
  }
}

