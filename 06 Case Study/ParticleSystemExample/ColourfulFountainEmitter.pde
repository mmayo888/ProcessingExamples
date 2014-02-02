public class ColourfulFountainEmitter extends FountainParticleEmitter {

  // Constructor -- exactly the same as the superclass except that colour is ignored
  public ColourfulFountainEmitter(float x, float y, int initialProbabilityToAddNewParticle) {
    super(x,y,initialProbabilityToAddNewParticle, #000000);
  }
  
  // Overridden helper method to generate a new particle with a random colour
  protected FountainParticle createFountainParticle() {
    // Create a random bright colour
    float red = 128 + random(127);
    float green = 128 + random(127);
    float blue = 128 + random(127);
    // Create and return a new particle
    return new FountainParticle(position.x, position.y, color(red,green,blue), 10);
  }
  
}

