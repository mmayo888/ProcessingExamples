

void setup() {

  println("Q1a: what is the output of this fragment?");
  Watch watch = new Watch(5, 45);
  println( watch );

  println("Q1b: what is the output of this fragment?");
  Watch anotherWatch = new Watch(10, 0);
  anotherWatch.isAM=false;
  anotherWatch.min=59;
  println( anotherWatch );
  anotherWatch.incrementMin();
  println( anotherWatch );

  println("Q2: use inheritance to implement a 24 hour watch. Here is the test case output:");
  Watch watch1 = new Watch(9, 58);
  Watch watch2 = new TwentyFourHourWatch(9, 58);
  println(watch1+"\t"+watch2);
  for (int index=0; index<3; index++) {
    watch1.incrementHour();
    watch2.incrementHour();
  }
  println(watch1+"\t"+watch2);
  watch1.incrementHour();
  watch2.incrementHour();
  println(watch1+"\t"+watch2);
  for (int index=0; index<5; index++) {
    watch1.incrementMin();
    watch2.incrementMin();
  }
  println(watch1+"\t"+watch2);
}

void draw() {
}

