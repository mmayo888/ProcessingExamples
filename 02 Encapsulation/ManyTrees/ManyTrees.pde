/* ManyTrees
 * Author: Michael Mayo
 *
 * This program demonstrates how to make a class and use a multiple objects from it.
 * The class is called Tree. Please see the Tree class definition itself for a description
 * of the Tree class' properties and methods.
 *
 * The multiple tree objects are stored in a collection.
 */

// Constants defining the sketchpad size and the number of trees
final int SKETCHPAD_WIDTH = 1000;
final int SKETCHPAD_HEIGHT = 600;
final int NUM_TREES = 20;

// Global reference to an collection of trees
ArrayList<Tree> forest;

/*
 * Setup method
 * Sets up the sketchpad and creates a single tree
 */

void setup() {
  // Set up sketchpad size
  size(SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT);
  // Create the forest array list
  forest = new ArrayList<Tree>();
  // Create each Tree object, one at a time
  for (int index=0; index<NUM_TREES; index++) {
    // Create a single random tree
    Tree tree = createRandomTree();
    // Add the tree to the list
    forest.add( tree );
  }
  // Print out the forest for debugging
  for (int index=0; index<forest.size(); index++)
    println( forest.get( index ) );
  
}

/*
 * createRandomTree method
 *
 * This method creates a single random tree
 *
 */
Tree createRandomTree() {
    // Create a new single tree
    Tree tree = new Tree();
    // Give the tree a random number of branches
    tree.setNumBranches( 3 + (int)random(5) );
    // Give the tree a random width and height
    tree.setTreeWidth( 50 + (int)random(100) );
    tree.setTreeHeight( 100 + (int)random(100) );
    // Give the tree a random trunk ratio
    tree.setTrunkRatio( 0.2 + random(0.5) );
    // Give the tree a random color
    switch ( (int)random(3) ) {
       case 0: tree.setTreeColor(#097C15); break;
       case 1: tree.setTreeColor(#8E4B03); break;
       case 2: tree.setTreeColor(#3BAA1A); 
    }
    // Give the tree a random position, ensuring that no tree will be drawn partially off-screen
    PVector pos = new PVector( random( SKETCHPAD_WIDTH-tree.getTreeWidth() ), 
                               random( SKETCHPAD_HEIGHT-tree.getTreeHeight() ) );
    tree.setPos( pos );
    // Done -- return the tree
    return tree;
}

/*
 * Draw method
 * Draws a list of treea
 */

void draw() {
  // Erase the background
  background(0);
  // Draw the forest
  for (int index=0; index<forest.size(); index++)
    forest.get( index ).draw();
}

