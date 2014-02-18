class Page_Title extends Page {

  // Constructor for the title page
  public Page_Title(int w, int h, PageManager manager) {
    super(w, h, manager);
  }  

  // Draw method for the title page
  protected void draw() {
    g.textFont(manager.assets().defaultFont);
    g.textAlign(CENTER, CENTER);
    g.text("Title Page\ntap to start", g.width/2, g.height/2);
  }


  public void tapEnd(float x, float y) {
    manager.setPageIndex(1);
  }
}

