
// Class representing a single country, composed of many cities
class Country {

  // Name of the country
  public String name;

  // List of cities
  private ArrayList<City> cities;

  // Constructor for country objects
  public Country(String name) {
    this.name = name;
    cities = new ArrayList<City>();
  }

  // Method to add a new city to this country
  public void addCity(String name, int pop) {
    City someCity = new City(name, pop);
    cities.add(someCity);
  }
  
  // Method to stringify a country
  public String toString() {
      String result = "Country = "+name;
      for (City city: cities) 
         result+="\n"+city;  // toString() called automagically!
      return result;
  }
}

