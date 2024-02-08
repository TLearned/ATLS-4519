import processing.pdf.*;
import processing.svg.*;
import Turtle.*;

int dist = 50;
PFont f;
Turtle t;

void setup() {
  size(900,900);
  background(255);
  stroke(225, 0 , 0, 240);
  strokeWeight(5);
  frameRate(30);
  fill(0);
  noLoop();
  
  t = new Turtle(this); 
  textSize(35);
}

void draw() {
  ellipse(535, 535, 400, 250);
  
  circle(535, 535, 250);
  
  triangle(450, 450,   620, 450,   535, 650);
  triangle(450, 620,   620, 620,   535, 420);
  triangle(450, 450,   450, 620,   650, 535);
  triangle(620, 620,   620, 450,   420, 535);
  line(450, 450,   535,650);
  line(620, 450,   535,650);
  line(450, 620,   535,420);
  line(620, 620,   535,420);
  line(450, 450,   650,535);
  line(450, 620,   650,535);
  
  circle(535, 535, 50);
  
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
  
  textAlign(CENTER);
  //text("Veni",535, 500);
  //text("Vidi",535, 550);
  //text("Vici",535, 600);
  //text("Carpe",535, 524);
  //text("Diem",535, 564);
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
