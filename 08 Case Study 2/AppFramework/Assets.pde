class Assets {

  // Reference to assets
  PFont defaultFont;

  // Load assets in the constructor
  public Assets(float defaultFontSize) {
    defaultFont=createFont("samplefont.ttf", defaultFontSize);
  }
}

