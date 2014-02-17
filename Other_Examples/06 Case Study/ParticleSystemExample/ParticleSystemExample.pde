// Define constants for size of the sketch
final int   SKETCH_WIDTH=600, SKETCH_HEIGHT=600;

// Declare an array of emitters
FountainParticleEmitter[] emitters;

// And one special colourful emitter
ColourfulFountainEmitter colourfulEmitter;

// Setup method
void setup() {
  // Set the sketch's size
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Create the fountain particle emitters
  emitters = new FountainParticleEmitter[ 2 ];
  emitters[ 0 ] = new FountainParticleEmitter(SKETCH_WIDTH/4, SKETCH_HEIGHT/2, 40, #FF0000);
  emitters[ 1 ] = new FountainParticleEmitter(SKETCH_WIDTH/2, SKETCH_HEIGHT/2, 40, #00FF00);
  colourfulEmitter = new ColourfulFountainEmitter(3*SKETCH_WIDTH/4, SKETCH_HEIGHT/2, 40); 
}

// Draw method
void draw() {
  // Clear the background
  background(0);
  // Ask the fountain particle emitters to draw and update
  for (FountainParticleEmitter emitter: emitters) {
    emitter.draw();
    emitter.update();
  }
  // Ask the colourful emitter to update and draw
  colourfulEmitter.draw();
  colourfulEmitter.update();
}

