class Assets {

  // Reference to a defaul font
  public PFont defaultFont;
  
  // Theme colours for the app
  public color defaultTextColor=#FFFFFF;

  // Load assets in the constructor
  public Assets(float defaultFontSize) {
    defaultFont=createFont("samplefont.ttf", defaultFontSize);
  }
}

