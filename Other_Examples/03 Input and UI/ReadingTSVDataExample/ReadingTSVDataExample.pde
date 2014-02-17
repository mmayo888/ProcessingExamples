
PImage map;
Table table;

void setup() {
  // Load the map & size the sketch
  map = loadImage("map.png");
  size(map.width, map.height);
  // Load the data
  table = loadTable("locations.tsv");
}


void draw() {
  // Draw the map
  image(map,0,0);
  // Set the text color
  fill(0);
  // Print the labels
  for (int rowIndex=0; rowIndex<table.getRowCount(); rowIndex++) {
      String name = table.getString(rowIndex,0);
      float x = table.getFloat(rowIndex,1);
      float y = table.getFloat(rowIndex,2);
      textAlign(CENTER);
      text(name, x, y);
  }
}

