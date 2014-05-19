class Page_GameOver extends Page {

  // Constructor for the title page
  public Page_GameOver(int w, int h, PageManager manager) {
    super(w, h, manager);
  }  

  // Draw method for the title page
  protected void draw() {
    background(0);
    fill(manager.assets.defaultTextColor);
    textFont(manager.assets().defaultFont);
    textAlign(CENTER, CENTER);
    text("GameOver Page\ntap to start again", width/2, height/2);
  }
  
  // Navigate back to title page
  public void tapEnd(float x, float y) {
    manager.setPageIndex(0); 
  }
  
}
