class SpreadSheet {

  // Dimensions of the sheet
  private int sheetWidth, sheetHeight;

  // 2D Array of cells
  private AbstractCell[][] cells;

  // Default text size for cells
  private float defaultCellTextSize;

  // Constructor
  public SpreadSheet(int sheetWidth, int sheetHeight) {
    // Copy the sheet dimensions
    this.sheetWidth = sheetWidth;
    this.sheetHeight = sheetHeight;
    // Create the array -- all elements of the array should be 
    // initialised to null
    cells = new AbstractCell[ sheetWidth ][ sheetHeight ];
  }

  // Method to set a numeric cell
  public void setNumericCell(int x, int y, float value, int numDP) {
    NumericCell cell = new NumericCell();
    cell.textSize = defaultCellTextSize;
    cell.value = value;
    cell.numDP = numDP;
    cells[ x ][ y ] = cell;
  }


  // Method to set a text cell
  public void setTextCell(int x, int y, String value, boolean isUnderlined) {
    TextCell cell = new TextCell();
    cell.textSize = defaultCellTextSize;
    cell.value = value;
    cell.isUnderlined = isUnderlined;
    cells[ x ][ y ] = cell;
  }

  // Draw method
  public void draw() {
    for (int x=0; x<sheetWidth; x++)
      for (int y=0; y<sheetHeight; y++)
        if (cells[x][y]!=null) {
          float cellX = x * width/sheetWidth;
          float cellY = y * height/sheetHeight;
          float cellWidth = width/sheetWidth;
          float cellHeight = height/sheetHeight;
          cells[x][y].draw(cellX, cellY, cellWidth, cellHeight);
        }
  }
}







