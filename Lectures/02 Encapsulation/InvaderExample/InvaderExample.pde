
// Number of aliens to create
final int NUM_ALIENS = 5;

// Reference to a collection of invaders
ArrayList<Invader> invaders;

// Setup method
void setup() {
  // Set the size of the sketch
  size(600, 600, P2D); 
  // Preload the sprite for the invader
  PImage invaderSprite = loadImage("invader.png");
  // Create the collection of invaders
  invaders = new ArrayList<Invader>();
  // Create the individual invaders
  for (int index=0; index<NUM_ALIENS; index++) {
    Invader invader = new Invader(invaderSprite);
    invaders.add( invader ); 
  }
}

// Draw method
void draw() {
  // Black background
  background(0);
  // Draw the invaders
  for (Invader invader: invaders)
    invader.draw();
  // Move the invaders
  for (Invader invader: invaders)
    invader.move();
}

