class Leaf extends AbstractObject { 
   public Leaf(float x, float y, float size) {
      super(loadImage("leaf.png"), x, y, size,random(TWO_PI));
   } 
   
}

class Apple extends AbstractObject {
   public Apple(float x, float y, float size) {
      super(loadImage("apple.png"), x, y, size,random(PI/2)-PI/4);
   } 
   
}

class Tree extends AbstractObject {
   public Tree(float x, float y, float size) {
      super(loadImage("tree.png"), x, y, size,0);
   } 
   
}
