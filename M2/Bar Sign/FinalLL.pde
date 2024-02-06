import processing.pdf.*;
import processing.svg.*;

PFont f;

void setup() {
  size(500,500);
  f = createFont("Times New Roman", 27, true);
}

void draw() {
  background(255);
  textFont(f, 27);
  fill(0);
  quad(100, 100,    140, 50,    180, 100,    140, 150);
  quad(190, 100,    230, 50,    270, 100,    230, 150);
  rect(100,145,170,45);
  fill(255);
  text("Learned's Leap",185, 175);
  textAlign(CENTER);
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
