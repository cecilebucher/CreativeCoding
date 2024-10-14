
/*
 *  Kunstuni TIME team
 *  Cécile
 *
 *  SimpleAnimation example
 *
 *  Animates a circle from the left to the right.
 *
 */

int ellipseSize = 150;
int ellipseX = -ellipseSize/2;

void setup(){
  size(400,400);
}


void draw(){
  
  background(0);
  ellipseX++;
  if(ellipseX >= width+ellipseSize/2){
    ellipseX = -ellipseSize/2;
  }
  ellipse(ellipseX,200,ellipseSize,ellipseSize);

}
