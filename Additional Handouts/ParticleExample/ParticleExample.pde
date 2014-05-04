
Particle ball;

void setup() {
  size(600, 600);
  background(255);
  ball = new Particle();
  ball.position.x = 10;
  ball.position.y = 10;
  line(0,ball.groundLevel,width,ball.groundLevel);
}

void draw() {
  ball.draw();
  ball.move();
}

void mousePressed() {
   ball.velocity.x = 10;
   ball.velocity.y = 0;
   ball.acceleration.y = 1; 
}

