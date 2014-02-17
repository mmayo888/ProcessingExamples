public class GameOverPage extends AbstractDialogPage {

  public GameOverPage() {
    super("Back", width/10, 8 * height/10, 8 * width/10, height/10);
  }

  public void draw() {
    background(0);
    super.draw();
    fill(255);
    textSize(height/10);
    textAlign(CENTER,CENTER);
    text("Game...over!", width/2, height/2);
  }

  public void buttonTap() {
    transitionToIntro();
  }
}

