
// Declare a list of animals
ArrayList<Animal> animals;

// Setup method
void setup() {
  // Example 1 -- works
  Animal animal1 = new Balinese();
  animal1.name="Frank";
  animal1.speak();
  
  // Example 2 -- fails
  //Balinese animal2 = new Animal();
  //animal2.name="Frank";
  //animal2.speak();
  
  // Example 3 -- works
  Animal animal3;
  Lion lion = new Lion();
  lion.name = "Eve";
  animal3 = lion;
  animal3.speak();
  
  // Example 3 -- fails
  //Animal animal4;
  //Lion lion1 = new Lion();
  //lion1.name = "Eve";
  //animal4 = lion;
  //animal4.speak();
  //animal4.attack();
  
  
}

// The class definitions
abstract class Animal {
  public String name="animal name";
  abstract public void speak();
}

abstract class Canine extends Animal {
}

abstract class Feline extends Animal {
}

class Labrador extends Canine {
  public String job="unknown";
  public void speak() {
    println(name+": Woof!");
  }
  
}  

class Chihuahua extends Canine {
  public void speak() {
    println(name+": Squeak");
  }
}  

class Lion extends Feline {
  public void speak() {
    println(name+": Roar!");
  }
  public void attack(){
    println(name+" attacks!");
  }
}  

class Balinese extends Feline {
  public void speak() {
    println(name+": Meow");
  }
}  

