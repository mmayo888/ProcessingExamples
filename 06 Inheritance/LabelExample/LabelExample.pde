
// Create some object references
Label first, second;
FunkyLabel third;

// Setup method
void setup(){
  // Set sketch size
  size(600,600);
  // Create two normal labels
  first=new Label();
  second=new Label();
  second.text = "Second Label Example";
  second.font = createFont("vipond_chubby.ttf", 40);
  second.col = #6e8821; 
  // Create a third funky label
  third=new FunkyLabel();
  third.text = "Funky Label Example";
  third.font = createFont("vipond_chubby.ttf", 50);
  third.col = #000000; 
  third.foreCol = #FA1212;
}

// Draw method
void draw(){
  background(0);
  // Draw the three labels
  first.draw(300,100);
  second.draw(300,200);
  third.draw(300,300);
}
