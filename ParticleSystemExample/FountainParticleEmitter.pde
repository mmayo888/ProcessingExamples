public class FountainParticleEmitter {

  // Position of the emitter 
  protected PVector position;

  // Rate that particles are added to the system
  // (expressed as the percent probability per frame)
  protected int probabilityToAddNewParticle;

  // List of particles in the system
  protected ArrayList<FountainParticle> particles;

  // Colour of the particles that this emitter emits
  protected color colour;

  // Constructor
  public FountainParticleEmitter(float x, float y, int initialProbabilityToAddNewParticle, color initialColour) {
    // Set the position of the emitter
    position = new PVector(x, y);
    // Set the probability of adding new particles
    probabilityToAddNewParticle=initialProbabilityToAddNewParticle;
    // Set the colour
    colour=initialColour;
    // Create the list to store the particles
    particles = new ArrayList<FountainParticle>();
  }

  // Update method
  public void update() {
    // Update all the particles
    for (FountainParticle particle: particles) 
      particle.update(); 
    // Remove the dead particles -- essentially this means create
    // a new list to replace the old one, but keep only the alive particles
    ArrayList<FountainParticle> newParticles = new ArrayList<FountainParticle>();
    for (FountainParticle particle: particles) 
      if (!particle.isDead())
        newParticles.add( particle );
    particles = newParticles;
    // Add new particles
    if (random(100)<=probabilityToAddNewParticle)
      particles.add( createFountainParticle() );
  }

  // Draw method
  public void draw() {
    // Draw the particles
    for (FountainParticle particle: particles) 
      particle.draw();
  }

  // Helper method to generate a new particle
  protected FountainParticle createFountainParticle() {
    // Create and return a new particle
    return new FountainParticle(position.x, position.y, colour, 10);
  }
}

