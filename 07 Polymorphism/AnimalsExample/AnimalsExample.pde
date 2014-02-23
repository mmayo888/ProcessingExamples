
// Declare a list of animals
ArrayList<Animal> animals;

// Setup method
void setup() {
  // Create the list of animals
  animals = new ArrayList<Animal>();
  // Populate the list with random animals
  for (int index=0; index<10; index++) {
    int value = (int)random(4);
    switch(value) {
    case 0: 
      animals.add(new Labrador()); 
      break; 
    case 1: 
      animals.add(new Chihuahua()); 
      break; 
    case 2: 
      animals.add(new Lion()); 
      break; 
    case 3: 
      animals.add(new Balinese()); 
      break;
    }
  }
  // Make each animal speak
  for (Animal currentAnimal: animals)
    currentAnimal.speak();
}

// The class definitions
abstract class Animal {
  abstract public void speak();
}

abstract class Canine extends Animal {
}

abstract class Feline extends Animal {
}

class Labrador extends Canine {
  public void speak() {
    println("Woof!");
  }
}  

class Chihuahua extends Canine {
  public void speak() {
    println("Squeak");
  }
}  

class Lion extends Feline {
  public void speak() {
    println("Roar!");
  }
  public void attack(){
  }
}  

class Balinese extends Feline {
  public void speak() {
    println("Meow");
  }
}  

