class Invader {

  // Position and velocity of the invader on the screen
  private PVector position, velocity;

  // Image that represents the invader
  private PImage image;

  // Color representing the tint to use when drawing the invader
  private color tint;

  // Constructor that is called when an object of this class
  // is created
  public Invader(PImage sprite) {
    // Save the image sprite
    image = sprite;
    // Set a random position
    position = new PVector(random(width), random(height));
    // Set left-->right velocity initially
    velocity = new PVector(1, 0);
    // Set a random tint
    tint = color(127+random(127),127+random(127),127+random(127));
  }

  // Methods to get the position and velocity of the invader
  public PVector getPosition() {
     return position.get(); 
  }
  public PVector getVelocity() {
     return velocity.get(); 
  }


  // Draw method
  public void draw() {
    // Set the tint
    tint(tint, 255); 
    // Draw the image
    imageMode(CENTER);
    image(image, position.x, position.y);
  }

  // Move method
  public void move() {
    // Move the invader
    position.add( velocity );
    // If the invader reaches the bounds of the sketch
    // then reverse the velocity
    if (position.x<=0||position.x>=width) 
      velocity.x *= -1;
  }
}

