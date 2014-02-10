public class GamePage extends AbstractPage {

  int timeStart, allowedTime=5000;
  
  public GamePage(){
    timeStart=millis();
  }
  
  public void draw() {
    background(#FF0000);
    fill(255);
    textSize(height/20);
    textAlign(RIGHT);
    int timeRemaining = allowedTime-(millis()-timeStart);
    text(timeRemaining, width, height/20);
    if (timeRemaining<=0)
      transitionToGameOver();
  }

}

