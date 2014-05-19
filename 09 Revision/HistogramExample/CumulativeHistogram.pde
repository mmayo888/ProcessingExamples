class CumulativeHistogram extends Histogram {

  public CumulativeHistogram(int numCategories){
     super(numCategories); 
  }
  
  public String toString() {
    String result = "";
    int sum=0;
    for (int index=0; index<categories.length; index++) {
      result+=categories[index]+": ";
      sum+=frequencies[ index ];
      result+=repeatSymbol(sum);
      result+="\n";
    }
    return result;
  }
}

