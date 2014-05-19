class Histogram {

  public char symbol = '*';

  protected String[] categories;
  protected int[] frequencies;

  public Histogram(int numCategories) {
    categories = new String[ numCategories ];
    frequencies = new int[ numCategories ];
    for (int index=0; index<numCategories; index++) {
      categories[ index ] = "unlabeled";
      frequencies[ index ] = 0;
    }
  } 

  public void setCategory(int index, String name, int frequency) {
    categories[ index ] = name;
    frequencies[ index ] = frequency;
  }

  public String toString() {
    String result = "";
    for (int index=0; index<categories.length; index++) {
      result+=categories[index]+": ";
      result+=repeatSymbol(frequencies[index]);
      result+="\n";
    }
    return result;
  }

  protected String repeatSymbol(int numTimes) {
    String result = "";
    for (int index=0; index<numTimes; index++) 
      result += symbol;
    return result;
  }
}

