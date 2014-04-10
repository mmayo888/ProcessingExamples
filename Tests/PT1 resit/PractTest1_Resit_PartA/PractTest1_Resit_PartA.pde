
Letter l1,l2,l3;

void setup() {
  size(600,600);
  l1 = new Letter('A',100,100,#3ea567);
  l2 = new Letter('B',200,150,#a51289);
  l3 = new Letter('Z',500,450,#4c1C98);
}

void draw() {
  background(255);
  l1.draw();
  l2.draw();
  l3.draw();
}
