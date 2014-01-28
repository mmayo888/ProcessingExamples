/*
 * PulsatingLabelExample
 * Author: Michael Mayo
 *
 * Demonstrates iheritance from an existing class
 */

// The width and height of the sketch
public final int SKETCH_WIDTH            = 600;
public final int SKETCH_HEIGHT           = 600;

// Object references
Label normalLabel;
PulsatingLabel coolLabel;

// Setup method
void setup() {
  // Set sketch size
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Create some example objects
  normalLabel = new Label("A normal label", 30, SKETCH_WIDTH/2, 100, CENTER, #258B2A);
  coolLabel = new PulsatingLabel("A pulsating label", 30, SKETCH_WIDTH/2, 200, CENTER, #258B2A, 60);
}

// Draw method
void draw() {
  // Clear background
  background(0);
  // Draw the labels
  normalLabel.draw();
  coolLabel.draw();
}


