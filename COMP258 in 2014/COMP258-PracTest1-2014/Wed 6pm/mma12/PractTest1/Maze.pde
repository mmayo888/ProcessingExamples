class Maze {

  // Number of points that the fill is composed of
  public final int NUM_POINTS = 6;

  // Colours of the fill
  public color fill=#000000;

  // Center of the fill
  protected PVector center;

  // Radius of the fill
  public float radius;

  // The points defining the fill outline
  protected ArrayList<PVector> outline;

  // Constructor
  public Maze(float x, float y, float radius) {
    // Initialise the center of the fill
    center=new PVector(x, y);
    // Set the radius
    this.radius=radius;
    // Initialise the arraylist of points for the outline
    outline=new ArrayList<PVector> ();
    // Add the points defining the outline of the fill
    float angleStep=TWO_PI/NUM_POINTS, angle;
    for (int index=0; index<NUM_POINTS; index++) {
      angle=index*angleStep;
      PVector point = new PVector( radius * sin(angle), radius * cos(angle) );
      outline.add(point);
    }
    // Give the fill an initial 5% jitter
    jitter(0.05);
  }


  // Draw method
  public void draw() {
    // Set the drawing parameters
  
    fill(fill);
    strokeWeight(6);
    // Push a new coordinate system
    pushMatrix();
    translate(center.x, center.y);
    // Draw the fill centered on (0,0)
    beginShape();
    for (PVector point: outline)
      curveVertex(point.x, point.y);
    curveVertex(outline.get(0).x, outline.get(0).y);
    curveVertex(outline.get(1).x, outline.get(1).y);
    curveVertex(outline.get(2).x, outline.get(2).y);
    endShape();
    // Restore the original coordinate system
    popMatrix();
  }
  
  // Method to jitter the fill
  public void jitter(float howMuch) {
    // Iterate over every point and randomly scale it
    // towards or from the center
    for (PVector point: outline)
      point.mult(1 + randomGaussian()*howMuch);
  }
  
}

