ArrayList<Ant> ants;

void setup() {
  size(600, 600);
  ants = new ArrayList<Ant>();
  for (int index=0; index<11; index++)
    ants.add(new Ant(300, 300));
}

void draw() {
  background(0);
  for (Ant ant: ants) {
    ant.draw();
    ant.move();
  }
}

abstract public class Agent {

  protected PVector position;
  protected PVector velocity;
  protected color col;

  public Agent(float x, float y) {
    position = new PVector(x, y);
    velocity = PVector.random2D();
    col = color(random(255), random(255), random(255));
  }

  abstract void draw();
  abstract void move();
}


public class Ant extends Agent {

  public Ant(float x, float y) {
    super(x,y);
  }
  
  public void draw() {
    ellipseMode(CENTER);
    fill(col);
    noStroke();
    ellipse(position.x, position.y, 10, 10);
  }

  public void move() {
    position.add(velocity);
    if (random(100)<=10) {
      velocity = PVector.random2D();
    }
  }
}

