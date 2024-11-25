/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  Roll the dice and color palette example
*  
*/


// color array with three elements
color[] colors = {color(255, 0, 0), color(255, 255, 0), color(255, 0, 255)};


void setup() {

  // create a window of size 400 pixels x 400 pixels
  size(400, 400);
  
  // The framerate is set to 1 - which means 1 frame per second
  frameRate(1);
  
}


void draw() {
  
  background(0);
  
  // size of the color array 
  int nbColors = colors.length;
  
  // take a random number between 0 and 2. (Roll the dice metaphor)
  int dice = (int) random(0, nbColors);
  println(dice);

  // select the dice "chosen" color and use it for the fill command
  fill(colors[dice]);
  
  // draw the circle
  ellipse(width/2, height/2, 150, 150);
  
}
