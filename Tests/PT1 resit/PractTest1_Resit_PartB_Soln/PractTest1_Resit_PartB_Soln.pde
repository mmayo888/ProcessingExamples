
Grid grid;

void setup() {
  size(600,600);
  grid = new Grid();
  grid.addRandomLetters();
}

void draw() {
  background(255);
  grid.draw();
}
