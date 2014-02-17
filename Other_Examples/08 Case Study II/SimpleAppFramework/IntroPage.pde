public class IntroPage extends AbstractDialogPage {

  public IntroPage() {
    super("Start", width/10, 8 * height/10, 8 * width/10, height/10);
  }

  public void draw() {
    background(0);
    super.draw();
  }

  public void buttonTap() {
    transitionToGame();
  }
}

