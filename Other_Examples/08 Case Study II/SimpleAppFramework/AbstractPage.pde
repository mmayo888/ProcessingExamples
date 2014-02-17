// Abstract superclass of all pages

public class AbstractPage {


  // All pages must draw themselves
  public void draw() {
  }

  // All pages repond to touch, drags, and releases
  public void touch(float x, float y) {
  }
  public void touchDrag(float x, float y) {
  }
  public void touchEnd(float x, float y) {
  }
}

// Abstract superclass of pages with a single button

public class AbstractDialogPage extends AbstractPage {

  // Position and size of the ok button
  PVector buttonPos, buttonSize;

  // State of the ok button, 0==normal, 1==pressed
  int buttonState=0;

  // Text for the button
  String buttonText;

  public AbstractDialogPage(String text, float x, float y, float w, float h) {
    buttonPos = new PVector(x, y);
    buttonSize = new PVector(w, h);
    buttonState = 0;
    buttonText=text;
  }

  public void draw() {
    // Draw button frame
    if (buttonState==0) fill(128);
    else fill(#FF7777);
    noStroke();
    rectMode(CORNER);
    rect(buttonPos.x, buttonPos.y, buttonSize.x, buttonSize.y);
    // Draw  button text
    fill(255);
    textSize(buttonSize.y);
    textAlign(CENTER, CENTER);
    text(buttonText, buttonPos.x+buttonSize.x/2, buttonPos.y+buttonSize.y/2);
  }

  public void touchDrag(float x, float y) {
    if (x>=buttonPos.x && x<=buttonPos.x+buttonSize.x
      && y>=buttonPos.y && y<=buttonPos.y+buttonSize.y)
      buttonState=1;
    else buttonState=0;
  }

  public void touchEnd(float x, float y) {
    if (buttonState==1) {
      if (x>=buttonPos.x && x<=buttonPos.x+buttonSize.x
        && y>=buttonPos.y && y<=buttonPos.y+buttonSize.y)
        buttonTap(); 
      buttonState=0;
    }
  }

  public void buttonTap() {
  }
}

