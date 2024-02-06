import Turtle.*;

int dist = 50;

Turtle t;

void setup() {
  size(900,900);
  background(0);
  stroke(255);
  strokeWeight(1);
  frameRate(30); 
  noLoop();
  
  t = new Turtle(this); 
}

void draw() {
  t.right(90);
  for (int i = 0; i < 4; i ++) {
  t.forward(dist);
  t.left(45);
  t.forward(dist);
  t.right(90);
  t.forward(dist);
  t.left(45);
  t.forward(dist);
  t.right(90);
  }
}

void keyPressed() { 
  // press 's' to save a pdf of your drawing
  if (key == 's') {
    String fileName = "drawing" + getDateString() + ".svg";
    beginRecord(SVG, fileName);
    draw();
    endRecord();
    println("Saved to file: " + fileName);
  }
} 

String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}
