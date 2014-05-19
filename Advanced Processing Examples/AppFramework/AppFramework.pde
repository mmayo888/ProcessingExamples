

// Declare a reference to a page manager
PageManager pageManager;

// Setup method
void setup() {
  // 600x600 sketch
  size(1200, 800);
  // Create the page manager
  pageManager=new PageManager(new Assets(50));
  // Add some pages to the manager of a specific size
  pageManager.addPage(new Page_Title(800,800,pageManager));     // page 0
  pageManager.addPage(new Page_PlayGame(800,800,pageManager));  // page 1
  pageManager.addPage(new Page_GameOver(800,800,pageManager));  // page 2
}

// Draw method
void draw() {
  // Draw the page manager
  pageManager.draw();
}

// Pass events to the page manager
void mousePressed() {
    pageManager.tapStart(mouseX, mouseY);
}

void mouseDragged() {
    pageManager.tapDrag(mouseX, mouseY);
}

void mouseReleased() {
    pageManager.tapEnd(mouseX, mouseY);
}

