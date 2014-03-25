

ArrayList<ParticleEmitter> emitters;

// Setup method
void setup(){
  size(600,600,P2D);
  // Create and populate a list of emitters
  emitters = new ArrayList<ParticleEmitter>();
  ParticleEmitter hose = new HoseParticleEmitter(100, 500, -PI/4);
  hose.initialParticleVelocityMagnitude=8;
  emitters.add(hose);
  emitters.add(new ExplosionEmitter(400,200));
  
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
