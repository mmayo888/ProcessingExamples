
Person somePerson;

void setup() {
  somePerson = new Employee();
  somePerson.name = "Elvis";
  ((Employee)somePerson).hourlyRate = 25.75;
  
  println(somePerson.name);
  println( ((Employee)somePerson).hourlyRate);
  
}

class Person {
   public String name; 
}

class Employee extends Person {
   public float hourlyRate; 
}

class Manager extends Person {
   public float salary; 
}


