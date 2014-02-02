abstract public class Particle {

  // Position of the particle 
  protected PVector position;

  // Velocity of the particle
  protected PVector velocity;

  // Acceleration of the particle
  protected PVector acceleration;

  // Colour of the particle
  protected color colour;

  // Size of the particle
  protected int size;


  // Constructor -- sets the initial position, velocity and colour of the particle
  public Particle(float initialX, float initialY, color initialColour, int initialSize) {
    // Initialise position
    position = new PVector(initialX, initialY);
    // Initial velocity and acceleration is zero
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);  
    // Initial colour
    colour = initialColour;
    // Initial size
    size = initialSize;
  }

  // All particles must have a draw method
  public void draw() {
    // Turn off stroke and set fill mode
    noStroke();
    fill( colour );
    // Draw a circle
    ellipseMode(CENTER);
    ellipse(position.x, position.y, size, size);
  }

  // All particles must have an update method
  public void update() {
    // Update position
    position.add( velocity );
    // Update velocity
    velocity.add( acceleration );
  }
  

}

