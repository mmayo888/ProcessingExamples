/*
 *
 * DO NOT change the code on this tab!
 *
 */


// Reference a spreadsheet object
SpreadSheet sheet;

// Setup method
void setup(){
  // Size the sketch 
  size(600,600);
  // Create the spreadsheet object
  sheet = new SpreadSheet(2,6);
  sheet.defaultCellTextSize = 50;
  // Populate the spreadsheet
  sheet.setTextCell(0,0,"Name", true);
  sheet.setTextCell(1,0,"Score", true);
  sheet.setTextCell(0,1,"Amy", false);
  sheet.setTextCell(0,2,"Jack", false);
  sheet.setTextCell(0,3,"Joe", false);
  sheet.setTextCell(0,4,"Pam", false);
  sheet.setTextCell(0,5,"AVERAGE", true);
  sheet.setNumericCell(1,1,45.67,1);
  sheet.setNumericCell(1,2,12.82222,1);
  sheet.setNumericCell(1,3,32.12345,2);
  sheet.setNumericCell(1,4,13.0,2);
  sheet.setNumericCell(1,5,20.723134,1);
}

// Draw method
void draw(){
  // White background
  background(255);
  // Draw the spreadsheet object
  sheet.draw();
}
