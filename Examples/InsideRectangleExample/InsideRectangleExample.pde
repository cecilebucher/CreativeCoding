/*
 *  Kunstuni TIME team
 *  Cécile
 *
 *  InsideRectangle example
 *
 *  Checks whether the mouse is in a rectangle or not.
 *
 */

float xRect = 50;
float yRect = 100;
float wRect = 200;
float hRect = 100;


void setup() {

  size(400,400);

}

void draw() {
  
  background(0);
  
  // check if the mouse is inside the rectangular
  if(mouseX >= xRect && mouseX <= (xRect + wRect) && mouseY >= yRect && mouseY <= (yRect + hRect)){
    fill(0,255,0);  // fill with green
  }else{
    fill(0,0,255);  // fill with blue
  }

  rect(xRect,yRect,wRect,hRect);
  
}
