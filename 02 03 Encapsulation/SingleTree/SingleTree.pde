/* SingleTree
 * Author: Michael Mayo
 *
 * This program demonstrates how to make a class and use a single object.
 * The class is called Tree. Please see the Tree class definition itself for a description
 * of the Tree class' properties and methods.
 */

// Global reference to a Tree object called "tree"
Tree tree;

/*
 * Setup method
 * Sets up the sketchpad and creates a single tree
 */
 
void setup(){
  // Set up sketchpad size
  size(600,600);
  // Create the tree and set some of its properties
  tree = new Tree();
  tree.setNumBranches(5);
  tree.setTrunkRatio(0.3);
  tree.setTreeWidth(80);
  // Print the tree to the console to check its correctness
  println(tree);
}

/*
 * Draw method
 * Draws a single tree
 */
 
void draw() {
  // Erase the background
  background(0);
  // Draw the tree several times at different positions
  tree.setPos( new PVector( 0,0 ) );
  tree.draw();
  tree.setPos( new PVector( 100,100 ) );
  tree.draw();
  tree.setPos( new PVector( 66,353 ) );
  tree.draw();
  tree.setPos( new PVector( 423,87 ) );
  tree.draw();
  tree.setPos( new PVector( 252,199 ) );
  tree.draw();
  tree.setPos( new PVector( 530,500 ) );
  tree.draw();
  
}
