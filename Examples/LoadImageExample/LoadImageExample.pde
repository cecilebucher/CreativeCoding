/*
 *  Kunstuni TIME team
 *  Cécile
 *
 *  LoadDisplayImage example taken from Processing
 *
 *  Images can be loaded and displayed to the screen at their actual size
 *  or any other size. 
 *
 */

PImage img;

float wImg;
float hImg;

void setup(){
  
  size(900,600);
  
  // loads the image file.
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img = loadImage("moonwalk.jpg");
  
  // stores in the variable wImg and hImg the width and heigh of the image.
  wImg = img.width;
  hImg = img.height;
  
}


void draw(){
  
  background(0);
  
  // Displays the image at its actual size at point (0,0)
  image(img, 0, 0);
  // Displays the image at point (0, height/2) at half of its size
  image(img, 100, 400, wImg/2, hImg/2);
  
}
