void setup(){
  
  // Example 1
  SportsCar myCar = new SportsCar();
  myCar.drive();
  myCar.make = "Ferrari";
  
  // Example 2 -- fails because it tries to create an object of an abstract type
  //Bicycle bike = new Bicycle();
  //bike.drive();
  //bike.manufacturer = "24Seven";
  
  // Example 3
  Tandem tandem = new Tandem();
  tandem.manufacturer = "24Seven";
  tandem.drive();
  
  // Example 4
  Vehicle vehicle = new MountainBike();
  vehicle.drive();
  
  // Example 5
  SportsCar sporty = new SportsCar();
  sporty.topSpeed = 210;
  println( "sporty's top speed is "+sporty.topSpeed );

  // Example 6 -- fails Car reference type does not have field topSpeed
  //SportsCar sporty2 = new SportsCar();
  //Car car = sporty2;
  //car.topSpeed = 180;
  //println( "sporty2's top speed is "+car.topSpeed );
  
  // Example 7 
  SportsCar sporty3 = new SportsCar();
  Car car = sporty3;
  ((SportsCar)car).topSpeed = 250;
  println( "sporty3's top speed is "+((SportsCar)car).topSpeed );
  
  // Example 8
  Minivan van = new Minivan();
  van.numSeats = 8;
  van.make = "Mazda";
  van.model = "Estima";
  van.drive();
  
  // Example 9 -- fails due to null pointer van3 not having a drive() method
  //Minivan van2 = new Minivan(), van3;
  //van3 = van2;
  //van3 = null;
  //van2.drive();
  //van3.drive();
  
  // Example 10
  Minivan van4 = new Minivan();
  Car someCar = van4;
  someCar.make="Toyota";
  someCar.drive();
  println("van4's make = " + van4.make );
  van4.drive();
  
  
  
}

abstract class Vehicle {
   abstract public void drive(); 
}

class Car extends Vehicle {
   public String make, model;
   public void drive() {
     println("a car drives");
   }
}

class Minivan extends Car{
  public float numSeats;
   public void drive() {
     println("a minivan drives");
   }
}

class SportsCar extends Car{
  public float topSpeed;
   public void drive() {
     println("a sportscar drives");
   }
}

abstract class Bicycle extends Vehicle {
   public String manufacturer;
   public void drive() {
     println("a bike is ridden");
   }
}

class MountainBike extends Bicycle{
}

class Tandem extends Bicycle{
}


