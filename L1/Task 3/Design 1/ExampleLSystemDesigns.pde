// ExampleLSystemDesigns - contains initialization methods
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.

//TL Code Start
LSystem D1() { //Honeycomb
  float moveDist = 20;
  float rotateAngle = 60;
  float scaleFactor = .5;
  
  String axiom = "F";
  
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "f-F-f");
  rules.put('f', "F+f+F+f");
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem D2() { //London Underground
  float moveDist = 10;
  float rotateAngle = 0;
  float scaleFactor = .1;
  
  String axiom = "F";
  
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('f', "ff");
  rules.put('F', "f[F]F-FFF");
    
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem D3() { //Fig 8 of +
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  String axiom = "F+F+F+F";
  
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F");
    
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
//TL Code End

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
