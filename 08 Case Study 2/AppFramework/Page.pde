class Page {


  // The page manager for this page
  protected PageManager manager;

  // Handy vector for storing the size of the page
  protected PVector size;

  // The time (in milliseconds) that this page was shown
  protected int timePageShown;

  // Constructor
  public Page(int w, int h, PageManager manager) {
    // Store a reference to the manager
    this.manager=manager;
    // Store the size and top left
    size = new PVector(w,h);
    // Set the rest of the page up
    pageShown();
  }

  // Method for drawing the page, may be overridden
  protected void draw() {
    textFont(manager.assets().defaultFont);
    textAlign(CENTER, CENTER);
    text("Page index="+manager.getPageIndex(),width/2, height/2);
  }


  // Events that pages care about, override as you wish
  // Assumes that (x,y) have been adjusted into page coordinates
  public void tapStart(float x, float y) {}

  public void tapEnd(float x, float y) {}

  public void tapDrag(float x, float y) {}
  
  // Method called when the page is shown for the first time
  public void pageShown() {
    timePageShown=millis();
  }
  
  // Method to get the size of the page
  public PVector size() {
     return size; 
  }
}

