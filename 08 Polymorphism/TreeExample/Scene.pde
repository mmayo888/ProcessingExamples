class Scene {

  // The number of leaves to draw
  public final int NUM_LEAVES = 100, NUM_APPLES = 10;

  // The list of objects to draw
  private ArrayList<AbstractObject> objects;

  // Constructor
  public Scene() {
    // Create the list of things to draw
    objects = new ArrayList<AbstractObject>();
    // Create the tree
    objects.add(new Tree(width/2, height/2, (int)(0.9*width)));
    // Create the leaves
    for (int index=0; index<NUM_LEAVES; index++) {
      // Create one leaf
      float x = randomGaussian()*width/8 + width/2;
      float y = randomGaussian()*height/8 + height/3;
      Leaf leaf = new Leaf(x, y, 0.05*width);
      // Add it to the scene
      objects.add(leaf);
    }
    // Create the apples
    // Determine the angular spacing
    float angle = TWO_PI/NUM_APPLES;
    for (int index=0; index<NUM_APPLES; index++) {
      // Create one apple
      float x = width/2 + width/5 * cos(index*angle);
      float y = height/3 + width/5 * sin(index*angle);
      Apple apple = new Apple(x, y, 0.05*width);
      // Add it to the scene
      objects.add(apple);
    }
  }
  
  // Draw method for the scene
  public void draw() {
     for (AbstractObject object: objects)
      object.draw(); 
  }
}

