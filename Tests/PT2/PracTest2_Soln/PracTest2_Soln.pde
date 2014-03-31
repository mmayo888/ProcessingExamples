// Reference a spreadsheet object
SpreadSheet sheet;

// Setup method
void setup(){
  // Size the sketch 
  size(600,250);
  // Create the spreadsheet object
  sheet = new SpreadSheet(2,3);
  sheet.defaultCellTextSize = 50;
  // Populate the spreadsheet
  sheet.setTextCell(0,0,"Name", true);
  sheet.setTextCell(1,0,"Score", true);
  sheet.setTextCell(0,1,"Amy", false);
  sheet.setTextCell(0,2,"Jack", false);
  sheet.setNumericCell(1,1,45.67,1);
  sheet.setNumericCell(1,2,12.82222,1);
}

// Draw method
void draw(){
  // White background
  background(255);
  // Draw the spreadsheet object
  sheet.draw();
}
