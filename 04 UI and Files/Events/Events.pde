void setup() { 
  size(600,600);
}

void draw() {
}

void mousePressed(){
   println("mousePressed @ "+mouseX+","+mouseY); 
}

void mouseDragged(){
   println("mouseDragged @ "+mouseX+","+mouseY); 
}

void mouseReleased(){
   println("mouseReleased @ "+mouseX+","+mouseY); 
}

void mouseClicked(){
   println("mouseClicked @ "+mouseX+","+mouseY); 
}

void keyTyped() {
   println("keyTyped "+key); 
}

void keyPressed() {
   println("keyPressed "+key); 
}

void keyReleased() {
   println("keyReleased "+key); 
}

