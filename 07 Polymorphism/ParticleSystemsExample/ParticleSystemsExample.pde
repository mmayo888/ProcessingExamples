

ArrayList<ParticleEmitter> emitters;

// Setup method
void setup(){
  size(600,600,P2D);
  // Create a list of emitters
  emitters = new ArrayList<ParticleEmitter>();
  emitters.add(new HoseParticleEmitter(width/8, height/2, -PI/4));
  
}

// Draw method
void draw(){
  background(0);
  // Draw the emitters
  for (ParticleEmitter emitter: emitters) 
    emitter.draw();
  // Update the emitters
  for (ParticleEmitter emitter: emitters) 
    emitter.update();
}
