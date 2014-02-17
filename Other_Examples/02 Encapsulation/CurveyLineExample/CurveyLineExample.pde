
Curve c;

void setup() {
  size(600, 600, P2D);
  frameRate(30);
  c=new Curve(150, 200, 400, 350);
}

void draw() {
  background(0);
  c.draw();
  c.update();
  println(frameRate);
}

public class Curve {

  public PVector prestart, start, mid, end, postend;
  public color col = #FFFFFF;
  public float size = 10;

  public Curve(float sx, float sy, float ex, float ey) {
    start = new PVector(sx, sy);
    end = new PVector(ex, ey);
    PVector diff = end.get();
    diff.sub(start);
    diff.mult(0.5);
    mid = start.get();
    mid.add(diff);
    prestart=start.get();
    prestart.sub(diff);
    postend=end.get();
    postend.add(diff);
  }

  public void draw() {
    // Set colour
    stroke(col);
    noFill();
    // Draw the curve
    beginShape();
    curveVertex(prestart.x, prestart.y);
    curveVertex(start.x, start.y);
    curveVertex(mid.x, mid.y);
    curveVertex(end.x, end.y);
    curveVertex(postend.x, postend.y);
    endShape();
    // Draw the points
    fill(col);
    noStroke();
    ellipseMode(CENTER);
    ellipse(prestart.x, prestart.y, size, size);
    ellipse(start.x, start.y, size, size);
    ellipse(mid.x, mid.y, size, size);
    ellipse(end.x, end.y, size, size);
    ellipse(postend.x, postend.y, size, size);
  }

  public void update() {
    PVector jitter=new PVector(random(1)-0.5, random(1)-0.5);
    jitter.mult(3);
    mid.add(jitter); 
    jitter=new PVector(random(1)-0.5, random(1)-0.5);
    jitter.mult(3);
    prestart.add(jitter);
    jitter=new PVector(random(1)-0.5, random(1)-0.5);
    jitter.mult(3);
    postend.add(jitter);
  }
}

