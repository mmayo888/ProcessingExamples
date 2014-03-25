

class PageManager {

  // The assets for the game
  protected Assets assets;

  // The list of pages
  protected ArrayList<Page> pages;

  // Index of the current page to be rendered
  protected int pageIndex=-1;

  // The default position on the real screen at which the pages should be rendered
  protected PVector position;


  // Constructor
  public PageManager(Assets assets) {
    // Copy the assets
    this.assets=assets;
    // Create the arraylist if pages
    pages = new ArrayList<Page>();
    // Default position is the center of the screen
    position=new PVector(width/2, height/2);
  }

  // Draw method
  public void draw() {
    // If there are no pages to render, simply return
    if (pageIndex==-1) {
      // No page to render
      textFont(assets.defaultFont);
      textAlign(CENTER, CENTER);
      text("No page to render!", position.x, position.y);
      return;
    } 
    // Otherwise draw the page
    pages.get(pageIndex).draw();
  }

  // Method to get the current page index
  public int getPageIndex() { 
    return pageIndex;
  }

  // Method to get the current page
  public Page getPage() {
    return pages.get(pageIndex);
  }


  // Method to get the number of pages
  public int getNumPages() { 
    return pages.size();
  }

  // Method to add a page
  public void addPage(Page page) { 
    pages.add(page); 
    if (pages.size()==1) pageIndex=0;
  }

  // Method for navigation
  public void setPageIndex(int index) {
    pageIndex=index;
    pages.get(index).pageShown();
  }

  public void nextPage() {
      setPageIndex( pageIndex++ % pages.size() );
  }




  // Helper method to determine if an (x,y) screen point lies in the current page
  // If it does, it subtracts the top left corner from the page and returns the adjusted PVector
  // If the point is outside the page, null is returned
  protected PVector pointInCurrentPage(float x, float y) {
    PVector pt = new PVector(x, y);               // screen point
    PVector size = pages.get(pageIndex).size();   // size of the page
    PVector topLeft = position.get();             // calculate top left of page
    topLeft.x -= size.x/2;                        
    topLeft.y -= size.y/2;
    pt.sub(topLeft);                              // subtract the screen point
    if (pt.x>=0 && pt.x<size.x && pt.y>=0 && pt.y<size.y) // return the adjusted point if its on the page
      return pt;
    return null;
  }

  // Events that page managers care about, override as you wish
  // Takes raw mouse coordinates and offsets them by the position of the page
  public void tapStart(float x, float y) {
    if (pageIndex>=0) {
      PVector pt = pointInCurrentPage(x, y);
      if (pt!=null)
        pages.get(pageIndex).tapStart(pt.x, pt.y);
    }
  }

  public void tapEnd(float x, float y) {
    if (pageIndex>=0) {
      PVector pt = pointInCurrentPage(x, y);
      if (pt!=null)
        pages.get(pageIndex).tapEnd(pt.x, pt.y);
    }
  }

  public void tapDrag(float x, float y) {
    if (pageIndex>=0) {
      PVector pt = pointInCurrentPage(x, y);
      if (pt!=null)
        pages.get(pageIndex).tapDrag(pt.x, pt.y);
    }
  }
  
  
  
  // Method to get the assets
  public Assets assets(){
     return assets; 
  }
}

