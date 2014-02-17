public class WaveyLine extends AbstractFancyLine {

  // The frequency and amplitude (in pixels) of the wave
  private float frequency, amplitude;

  // The angle between the 'from' and the 'to' point
  private float angle;

  // Constructor that sets the all options
  public WaveyLine(float fromX, float fromY, float toX, float toY, color col, float frequency, float amplitude) {
    // Copy the options
    super(fromX, fromY, toX, toY, col);
    this.frequency = frequency;
    this.amplitude = amplitude;
    // Compute the angle between the from and to points
    PVector diff = getTo();
    diff.sub( getFrom() );
    angle = diff.heading();
  }

  // Getters
  public float getFrequency() { 
    return frequency;
  }

  public float getAmplitude() { 
    return amplitude;
  }

  // Draw method for wavey lines
  // The strategy is to draw a sinosoidal line of a given length, rotating and translating it to 
  // the proper position on the screen
  public void draw() {
    // Set up colours
    noFill();
    stroke( getColor() );
    strokeWeight(2);
    // Push a new coordinate frame
    pushMatrix();
    // Translate and rotate the coordinate frame
    translate( getFrom().x, getFrom().y );
    rotate(angle);
    // Draw the wavely line from coordinate (0,0)
    float x = 0;
    beginShape();
    while (x < getLength()) {
       curveVertex(x, amplitude * sin( frequency * x ));
       x += 5;
    }
    endShape();
    
    
    // Pop the coordinate frame
    popMatrix();
    
  }
  
    // ToString method for debugging
  public String toString() {
    return super.toString()+" amplitude="+amplitude+" frequency="+frequency;
  }
}

