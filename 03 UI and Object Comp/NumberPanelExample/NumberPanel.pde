class NumberPanel {

  // Collection of buttons forming the panel
  private ArrayList<Button> buttons;

  // Numbers pressed so far
  public String text="";

  // Length of a pin number in characters
  public int PIN_NUMBER_LENGTH=4;

  // Constructor
  public NumberPanel() {
    // Create the collection of buttons
    buttons = new ArrayList<Button>();
    // Determine the optimal size of each button
    float size = width/3;
    // Create the buttons
    for (int index=0; index<10; index++) {
      // Determine x,y position of the button
      float x=(index%3)*size+size/2;
      float y=(index/3)*size+size/2;
      // Create the button
      Button button = new Button(x, y, size, size);
      button.text=""+index;
      button.panel=this;
      // Add the button to the collection
      buttons.add(button);
    }
  }

  // Draw method
  public void draw() {
    // Draw the buttons
    for (Button button: buttons)
      button.draw();
    // Draw the text typed so far
    textAlign(CENTER, BOTTOM);
    text(text, width/2, height);
  }

  // Click start
  public void clickStart(float x, float y) {
    for (Button button: buttons)
      button.clickStart(x, y);
  }

  // Click end
  public void clickEnd(float x, float y) {
    for (Button button: buttons)
      button.clickEnd(x, y);
  }

  // Button click event
  public void buttonClicked(Button whichOne) {
    text+=whichOne.text; 
    if (text.length()>PIN_NUMBER_LENGTH) 
      text=text.substring(text.length()-PIN_NUMBER_LENGTH);
  }
}

