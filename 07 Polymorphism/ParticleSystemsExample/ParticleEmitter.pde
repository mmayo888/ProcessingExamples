abstract class ParticleEmitter {

  // Emitters have a position 
  protected PVector position;
  
  // Emitters have an initial particle velocity magnitude
  public float initialParticleVelocityMagnitude;
  
  // List of particles created by the emitter
  protected ArrayList<Particle> particles;

  // Constructor
  public ParticleEmitter(float x, float y) {
    particles=new ArrayList<Particle>();
    position = new PVector(x,y);
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
    // Create new particles with probability 30% per frame
    if (random(1)<0.3) {
      // Add the particle to the list of particles
      particles.add( createParticle() );
    }
  }
  
  // Helper method to create a new particle -- must be implemented by specific types
  // of emitter
  abstract protected Particle createParticle();
}

