class Page_Title extends Page {

  // Constructor for the title page
  public Page_Title(int w, int h, PageManager manager) {
    super(w, h, manager);
  }  

  // Draw method for the title page
  protected void draw() {
    // If the page has just been shown, fade in the title text 
    // by changing the default alpha with elapsed time
    color c=manager.assets.defaultTextColor;
    if (millis()-timePageShown<=1000)
      c=color(red(c),green(c),blue(c),255*(millis()-timePageShown)/1000);
    g.fill(c);
    // Draw the title
    g.textFont(manager.assets().defaultFont);
    g.textAlign(CENTER, CENTER);
    g.text("Title Page\ntap to start", g.width/2, g.height/2);
  }


  public void tapEnd(float x, float y) {
    manager.setPageIndex(1);
  }
}

