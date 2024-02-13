import Turtle.*;

Turtle t;

void setup() {
  size(700, 200);
  frameRate(120);
  t = new Turtle(this);
  noLoop();
}

void resetTurtle() {
  t.penUp();
  t.clearTurtleHistory();
  
  t.goToPoint(100, 100);
  t.setHeading(0);
  t.penDown();
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(5);
  noFill();
 
 resetTurtle();
 
 //I
 t.push();
 t.left(90);
 t.forward(20);
 t.pop();
 t.push();
 t.right(90);
 t.forward(20);
 t.pop();
 t.forward(40);
 t.push();
 t.left(90);
 t.forward(20);
 t.pop();
 t.right(90);
 t.forward(20);
 
 t.penUp();
 t.forward(30);
 t.penDown();
 
 
 //T
 t.forward(20);
 t.push();
 t.forward(20);
 t.pop();
 t.push();
 t.right(90);
 t.forward(40);
 t.pop();
 
 t.penUp();
 t.forward(50);
 t.penDown();
 
 //Triangle
 t.right(30);
 t.forward(80);
 t.right(150);
 t.forward(70);
 t.right(90);
 t.forward(40);
 
 t.penUp();
 t.right(90);
 t.forward(150);
 t.left(90);
 t.penDown();
 
 //Pentagon
 t.right(126);
 t.forward(50);
 t.right(72);
 t.forward(50);
 t.right(72);
 t.forward(50);
 t.right(72);
 t.forward(50);
 t.right(72);
 t.forward(50);
 
 t.penUp();
 t.right(34);
 t.forward(150);
 t.penDown();
 
 //Circle
 for(int i = 0; i < 360; i++) {
   t.right(1);
   t.forward(1);
 }
 
 //t.drawTurtle();
}
