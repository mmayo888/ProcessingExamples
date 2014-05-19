

void revQ1(){
   // Predict the output of this
  Histogram hist1 = new Histogram(3);
  hist1.setCategory(0, " Apples", 4);
  hist1.setCategory(1, "Bananas", 2);
  hist1.setCategory(2, "Oranges", 5);
  println( hist1 );
  //And this
  Histogram hist2 = new Histogram(4);
  hist2.setCategory(0, "Chocolate", 10);
  hist2.symbol='!';
  hist2.setCategory(1, "   Onions", 3);
  println( hist2 );
  
  // And this -- this one fails due to incorrect constructor
  //Histogram hist3 = new Histogram();
  //hist3.setCategory(0, "Cars ", 3);
  //hist3.setCategory(1, "Bikes", 5);
  //println( hist3 );
  
  // And this -- another failure due to array out of index
  //Histogram hist4 = new Histogram(2);
  //hist4.setCategory(0, "Poppies", 10);
  //hist4.setCategory(2, "Roses", 3);
  //println( hist4 );
  
  // Two references, one object
  Histogram hist5 = new Histogram(4), hist6;
  hist5.setCategory(0, "Chocolate", 10);
  hist6=hist5;
  hist6.symbol='!';
  hist6.setCategory(1, "   Onions", 3);
  println( hist6 );
  

}


void revQ2(){
  // Inheritance question -- implement Cumulative Histogram class
  Histogram hist = new Histogram(3);
  hist.setCategory(0, " Apples", 4);
  hist.setCategory(1, "Bananas", 2);
  hist.setCategory(2, "Oranges", 5);
  println( hist );
  CumulativeHistogram hist2 = new CumulativeHistogram(3);
  hist2.setCategory(0, " Apples", 4);
  hist2.setCategory(1, "Bananas", 2);
  hist2.setCategory(2, "Oranges", 5);
  println( hist2 );
}

void setup(){
   revQ1(); 
   //revQ2(); 
}


