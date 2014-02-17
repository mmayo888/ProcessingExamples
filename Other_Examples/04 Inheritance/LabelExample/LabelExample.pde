Label first, second;
FunkyLabel third;

void setup(){
  size(600,600);
  first=new Label();
  second=new Label();
  second.text = "Second Label Example";
  second.font = createFont("vipond_chubby.ttf", 40);
  second.col = #6e8821; 
  third=new FunkyLabel();
  third.text = "Funky Label Example";
  third.font = createFont("vipond_chubby.ttf", 50);
  third.col = #000000; 
  third.foreCol = #FA1212;
}

void draw(){
  background(0);
  first.draw(300,100);
  second.draw(300,200);
  third.draw(300,300);
}
