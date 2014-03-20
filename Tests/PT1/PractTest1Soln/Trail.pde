// A class representing a trail, which is a route through the maze
// drawn by the user

public class Trail {

  // The array list of points
  private ArrayList<PVector> points;

  // The colour of the trail
  public color trailColour;

  // The stroke weight of the trail
  public int trailStrokeWeight;

  // The constructor
  public Trail() {
    // Create the list of points
    points = new  ArrayList<PVector>();
    // Initialise other settings to default values
    trailColour = #000000;
    trailStrokeWeight = 4;
  }

  // Draw method for the trail
  public void draw() {
    stroke(trailColour);
    strokeWeight(trailStrokeWeight);
    for (int index=1; index<points.size(); index++) {
      PVector fromPoint = points.get(index-1);
      PVector toPoint = points.get(index);
      line(fromPoint.x, fromPoint.y, toPoint.x, toPoint.y);
    }
  }
  
  // Method to add a point to the points list
  public void addPoint(float x, float y) {
     points.add( new PVector(x,y) ); 
  }
}

