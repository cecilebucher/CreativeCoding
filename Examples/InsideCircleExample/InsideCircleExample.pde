/*
 *  Kunstuni TIME team
 *  Cécile
 *
 *  InsideCircle example
 *
 *  Checks whether the mouse is in a circle or not.
 *
 */

float xCircle = 200;
float yCircle = 200;
float diamCircle = 150; // diameter of the circle
float rCircle = diamCircle/2;  // radius of the circle


void setup() {

  size(400,400);

}

void draw() {
  
  background(0);
  
  // check if the mouse is inside the circle
  // The command dist calculates the distance between the mouse position and the center of the circle
  if(dist(mouseX,mouseY,xCircle,yCircle) <= rCircle){ 
    fill(0,255,0);  // fill with green    
  }else{
    fill(0,0,255);  // fill with blue
  }

  ellipse(xCircle,yCircle,diamCircle,diamCircle);
  
}
