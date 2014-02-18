class Page_GameOver extends Page {

  // Constructor for the title page
  public Page_GameOver(int w, int h, PageManager manager) {
    super(w, h, manager);
  }  

  // Draw method for the title page
  protected void draw() {
    g.textFont(manager.assets().defaultFont);
    g.textAlign(CENTER, CENTER);
    g.text("GameOver Page\ntap to start again", g.width/2, g.height/2);
  }
  
  // Navigate back to title page
  public void tapEnd(float x, float y) {
    manager.setPageIndex(0); 
  }
  
}
