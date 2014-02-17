/* Tree class
 * Author: Michael Mayo
 *
 * This class defines the Tree class.
 *
 * The Tree class encapsulates the following properties:
 * -- height of the tree
 * -- width of the widest branch
 * -- number of branches
 * -- ratio of the trunk's height to the tree's height
 * -- colour of the tree
 * All of these properties are initialised to sensible default values but can be modified using
 * getter and setter methods
 *
 * Tree objects may also draw themselves at any position on the sketchpad using the draw(,) method
 */

class Tree {

  // A private constant defining the width of the smallest (i.e. the top) branch
  private final int MIN_BRANCH_WIDTH = 20;

  // Private properties specifying the position of the tree
  PVector pos;

  // Private properties defining the appearance of the tree
  private int treeHeight, treeWidth, numBranches;
  private float trunkRatio;
  private color treeColor;

  // The constructor, which sets sensible default values for the Tree object
  public Tree() {
    pos = new PVector(0,0);
    treeHeight = 100;
    treeWidth = 50;
    numBranches = 3;
    trunkRatio = 0.5;
    treeColor = #097C15;
  }

  // Getter and setter methods for the tree's position, which should be a PVector
  public PVector getPos() {
    return pos;
  }
  
  public void setPos(PVector val) {
     pos = val; 
  }

  // Getter and setter methods for the tree's height, which should be a positive integer
  public int getTreeHeight() {
    return treeHeight;
  }

  public void setTreeHeight(int val) {
    treeHeight = val;
  }

  // Getter and setter methods for the tree's width, which should be a positive integer
  public int getTreeWidth() {
    return treeWidth;
  }

  public void setTreeWidth(int val) {
    treeWidth = val;
  }

  // Getter and setter methods for the number of branches, which should be a positive integer
  public int getNumBranches() {
    return numBranches;
  }

  public void setNumBranches(int val) {
    numBranches = val;
  }

  // Getter and setter method for the trunk ratio, which should be a value between 0 and 1
  public float getTrunkRatio() {
    return trunkRatio;
  }

  public void setTrunkRatio(float val) {
    trunkRatio = val;
  }

  // Getter and setter method for the colour of the tree, which should be a color
  public int getTreeColor() {
    return treeColor;
  }

  public void setTreeColor(color val) {
    treeColor = val;
  }

  // ToString method for printing out Tree objects to the console
  public String toString() {
    String result="Tree Instance: pos="+pos+" treeWidth="+treeWidth+" treeHeight="+treeHeight
      +" numBranches="+numBranches+" trunkRatio="+trunkRatio+" treeColor="+treeColor;  
    return result;
  }

  // The draw method for tree objects
  public void draw() {
    // Set up the drawing parameters
    noFill();
    stroke( treeColor );
    strokeWeight(4);
    // Draw the trunk as a single line
    line( pos.x+treeWidth/2, pos.y, pos.x+treeWidth/2, pos.y+treeHeight );
    // Draw the branches
    // Iterate over every single branch, drawing a branch at a time
    for (int branchIndex=0; branchIndex<numBranches; branchIndex++) {
      // For the current branch, calculate its width
      float branchWidth = MIN_BRANCH_WIDTH + branchIndex * (treeWidth-MIN_BRANCH_WIDTH)/(numBranches-1);
      // Calculate its vertical position
      float branchVerticalPosition = branchIndex * (treeHeight * (1 - trunkRatio))/(numBranches-1);
      // Now draw the branch
      line( pos.x + treeWidth/2 - branchWidth/2, pos.y + branchVerticalPosition, 
            pos.x + treeWidth/2 + branchWidth/2, pos.y + branchVerticalPosition );
    }
  }
}

