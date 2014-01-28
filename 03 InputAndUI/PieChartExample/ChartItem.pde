public class ChartItem {

  // A chart item has a name or label and an amount
  private String name;
  private float amount;

  // A chart item also has a colour
  private color col;

  // Constructor that sets the name, amount and color
  public ChartItem(String name, float amount, color col) {
    this.name=name;
    this.amount=amount;
    this.col=col;
  }
  // Constructor that only sets the name and amount, with a random color
  public ChartItem(String name, float amount) {
    this(name, amount, color(random(255), random(255), random(255)));
  }

  // Getter methods
  public String getName() { 
    return name;
  }
  public float getAmount() { 
    return amount;
  }
  public color getColor() { 
    return col;
  }

  // ToString method for debugging this class
  public String toString() {
    return "name="+name+" amount="+amount+" col="+col;
  }
}

