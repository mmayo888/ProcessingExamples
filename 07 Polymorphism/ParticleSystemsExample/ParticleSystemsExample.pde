

ArrayList<ParticleEmitter> emitters;

// Setup method
void setup(){
  size(600,600);
  emitters = new ArrayList<ParticleEmitter>();
  emitters.add(new ParticleEmitter(width/2, height/2, -PI/2));
  emitters.add(new ParticleEmitter(width/2, height/2, -3*PI/4));
  emitters.add(new ParticleEmitter(width/2, height/2, -PI/4));
  
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
