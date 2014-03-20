
// Class representing a single city
class City {

  // Properties of a city
  public String name;
  public int pop;

  // Constructor for city objects
  public City(String name, int pop) {
    this.name = name;
    this.pop = pop;
  }
  
  // Stringification method
  public String toString() {
     return "name = "+name+" pop = "+pop+"K"; 
  }
  
}

