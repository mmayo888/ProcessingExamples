
void setup() {
  size(600,600);
  background(0);
  //test_rect();
  //test_PVector_add();
}


void test_rect() {
  // Normal cases
  noStroke();
  fill(#88FF88);
  rect(50, 50, 100, 100);
  rect(200, 60, 200, 50);
  // Error cases
  fill(#FF8888);
  rect(50, 150, -100,-100);
  rect(200, 160, -200, -50);
  // Boundary cases
  fill(#8888FF);
  rect(50, 150, 0,0);
  rect(200, 160, 0, 0);
}

void test_PVector_add() {
   PVector x,y;
   // Normal cases
   x = new PVector(3,4);
   y = new PVector(1,2);
   print("result of adding "+x+" to "+y+" is ");
   x.add(y);
   println(x);
   x = new PVector(-3.5,4);
   y = new PVector(1,-2.5);
   print("result of adding "+x+" to "+y+" is ");
   x.add(y);
   println(x);
   // Erroneous cases
   x = new PVector(-3.5,4);
   y = null;
   print("result of adding "+x+" to "+y+" is ");
   x.add(y);  // should generate null pointer exception
   println(x);
   
}
