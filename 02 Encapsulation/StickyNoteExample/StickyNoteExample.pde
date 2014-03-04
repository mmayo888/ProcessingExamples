
// Declare some references to sticky notes
StickyNote toDoList, reminder;

// Setup method
void setup(){
  // Size the sketch
  size(600,600);
  // Create the To Do list
  toDoList = new StickyNote();
  toDoList.text="1.Wake up\n2.Get dressed\n3.Go to university";
  // Create a reminder
  reminder = new StickyNote();
  reminder.noteX=400;
  reminder.noteY=450;
  reminder.noteColour=#5EFF0F;
  reminder.text="Don't forget to walk the dog!";
}

// Draw method
void draw(){
  // Draw both sticky notes
  toDoList.draw();
  reminder.draw();
}
