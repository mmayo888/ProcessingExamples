class Page_PlayGame extends Page {

  int count=0;

  // Constructor for the title page
  public Page_PlayGame(int w, int h, PageManager manager) {
    super(w, h, manager);
  }  

  // Draw method for the title page
  protected void draw() {
    g.textFont(manager.assets().defaultFont);
    g.textAlign(CENTER, CENTER);
    g.text("PlayGame Page\ntap 10 times to finish\n"+count, g.width/2, g.height/2);
  }

  // Handle events
  public void tapEnd(float x, float y) {
    count++;
    if (count>10)
      manager.setPageIndex(2);
  }
  
  // Method to reset the game when the page is first shown
  public void pageShown() { count=0; }
  
}

