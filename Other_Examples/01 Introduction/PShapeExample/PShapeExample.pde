
// Reference to a PShape object
PShape myShape;

// Setup method -- create myShape
void setup(){
  size(600,600, P2D);
  myShape = createShape();
  myShape.beginShape();
  myShape.fill( #5F2CD8 );
  myShape.stroke(0);
  myShape.vertex(0,0);
  myShape.vertex(50,0);
  myShape.vertex(50,50);
  myShape.vertex(25,25);
  myShape.vertex(0,50);
  myShape.endShape(CLOSE);
}

// Draw method -- draw myShape several times
void draw() {
  background(255);
  shape(myShape, 20, 20);
  shape(myShape, 70, 200);
  shape(myShape, 500, 470);
}
