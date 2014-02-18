
// Create references to some blobs
Blob blob1, blob2, blob3;
RotatingBlob blob4;

// Setup method
void setup(){
  // 600x600 
  size(600,600);
  // Create the blobs with different properties
  blob1 = new Blob(200,200,100);
  blob2 = new Blob(400,200,50);
  blob2.fill=#5649EA;
  blob3 = new Blob(200,400,75);
  blob3.fill=#E81CCD;
  blob3.stroke=#1811F5;
  blob4 = new RotatingBlob(400,400,100);
  blob4.fill=#D1F739;
  blob4.rotationSpeed=TWO_PI/500;
}

// Draw method
void draw(){
  // Clear screen
  background(255);
  // Draw the blobs
  blob1.draw();
  blob2.draw();
  blob3.draw();
  blob4.draw();
  // Jitter the blobs by 0.5%
  blob1.jitter(0.005);
  blob2.jitter(0.005);
  blob3.jitter(0.005);
  blob4.jitter(0.005);
  
}
