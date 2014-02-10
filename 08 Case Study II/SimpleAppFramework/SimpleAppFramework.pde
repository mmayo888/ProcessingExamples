

// Pages
AbstractPage current;

// Setup method
void setup() {
  current = new IntroPage();
}

// Draw method
void draw() {
  current.draw();
}

// Event handling
void mousePressed() {
  current.touch(mouseX, mouseY);
}

void mouseDragged() {
  current.touchDrag(mouseX, mouseY);
}

void mouseReleased() {
  current.touchEnd(mouseX, mouseY);
}

// Callbacks from the pages
void transitionToIntro() {
    current=new IntroPage();
}

void transitionToGame() {
    current=new GamePage();
}

void transitionToGameOver() {
    current=new GameOverPage();
}


