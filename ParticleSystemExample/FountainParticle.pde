public class FountainParticle extends Particle {

  // The time-to-live -- how long before this particle fades out
  // A zero or negative ttl indicates that the particle is dead
  protected int ttl;

  // Constructor -- initialize particle, the acceleration due to gravity, and the time-to-live
  public FountainParticle(float initialX, float initialY, color initialColour, int initialSize) {
    // Call superclass constructor
    super(initialX, initialY, initialColour, initialSize);
    // Initialize the velocity to a random direction
    PVector randomVelocity = PVector.random2D();
    randomVelocity.y = -1 * abs(randomVelocity.y);    // Force y to be to negative (so velocity is initially upwards)
    randomVelocity.x /= 4;                            // Scale down x so that movement is primarily vertical  
    randomVelocity.mult(3);                           // Scale up the entire vector to give it dome decent upward velocity
    velocity = randomVelocity;
    // Set the acceleration in the y direction
    acceleration.y = 0.05;                            
    // Initialize ttl
    ttl = 255;
  }
  
  
  // Update method -- updates the particle, its time-to-live, and its colour based on time-to-live
  public void update() {
    // Call the super class update method
    super.update();
    // Update the time-to-live
    ttl -= 2;
    // Update the colour of the particle based on the time-to-live
    colour = color( red(colour), green(colour), blue(colour), ttl );
  }
  
  // Method to determine if the particle is dead or alive
  public boolean isDead() {
    return (ttl<=0);
  }


}

