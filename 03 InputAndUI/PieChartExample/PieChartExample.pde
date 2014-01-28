/*
 * PieChartExample
 * Author: Michael Mayo
 *
 * Demonstrates how objects composed of other objects.
 * Illustrates encapsulation and class design.
 */
 
// The width and height of the sketch
public final int SKETCH_WIDTH            = 600;
public final int SKETCH_HEIGHT           = 600;

 
// Reference to a Pie chart
PieChart chart;

// Setup method
void setup() {
  // Size the sketch
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Create the pie chart
  chart = new PieChart(50,50,SKETCH_WIDTH-100);
  // Add some items
  chart.add("USA", 13);
  chart.add("NZ", 70);
  chart.add("AU", 31);
  chart.add("SG", 29);
  chart.add("HK", 44);
  // Debug the class by printing it out
  println(chart);
}

void draw() {
  // Clear background
  background(255);
  // Draw the pie chart
  chart.draw();
}

