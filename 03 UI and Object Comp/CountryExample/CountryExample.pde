
// Declare references to a country object
Country nz;

// Setup method
void setup(){
  // Create the country objects
  nz = new Country("New Zealand");
  // Add some cities to the countries
  nz.addCity("Wellington",398);
  nz.addCity("Hamilton",212);
  nz.addCity("Dunedin",119);
  // Stringify the country
  println(nz);
}


