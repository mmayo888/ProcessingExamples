abstract class ParticleEmitter {

  // Emitters have a position 
  protected PVector position;
  
  // Emitters have an initial particle velocity magnitude
  public float initialParticleVelocityMagnitude;

  // Emitters have a probability per frame of emitting a new particle
  public float probNewParticlePerFrame;
  
  // List of particles created by the emitter
  protected ArrayList<Particle> particles;

  // Constructor
  public ParticleEmitter(float x, float y) {
    particles=new ArrayList<Particle>();
    position = new PVector(x,y);
    initialParticleVelocityMagnitude=4;
    probNewParticlePerFrame=0.5;
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
    // Create new particles 
    if (random(1)<probNewParticlePerFrame) {
      // Add the particle to the list of particles
      particles.add( createParticle() );
    }
  }
  
  // Helper method to create a new particle -- must be implemented by specific types
  // of emitter
  abstract protected Particle createParticle();
}

