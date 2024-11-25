
color colorCenter = color(255,0,0);
color colorPetals = color(255,255,0);

float previousDist = 0;
color c1 = color(255,0,0);
color c2 = color(0,0,255);

void setup(){

  //size(400,400);
  fullScreen();
  
  // the background only gets drawn once
  background(0);

}


void draw(){

  
  // calculate the distance between the mouse position and the center of the window
  float d = dist(width/2,height/2,mouseX,mouseY);
  
  // to check out the value
  //println(d);
  
  // if the mouse position has not changed between now and the previous frame, do not generate new flowers
  if(abs(previousDist - d) > 1){
  
    // map the distance to the size of the flower
    float flowerSize = map(d,0,width/2,100,10);
    
    // map the distance to the percentage of red in our cMix final color
    float percent = map(d,0,width/2,0.0,1.0);
    color cMix = lerpColor(c1,c2,percent);
    fill(cMix);
    
    // choose a random angle and calculate the x and y positions at a radius d
    float alpha = random(2*PI);
    float xC = d*cos(alpha) + width/2;
    float yC = d*sin(alpha) + height/2;
    
    // draw easy shape:
    // ellipse(xC,yC,diam,diam);
    
    // draw more complex shape:
    drawFlower(xC,yC,flowerSize,cMix);
  }
  
  // store the previous distance of the mouse to the center
  previousDist = d;

}

// function that draws a flower at position (xCenter,yCenter) 
void drawFlower(float xCenter, float yCenter, float flowerSizeTemp, color c){
  
  stroke(0);
  strokeWeight(5);
  fill(c);
  
  float sizePatels = flowerSizeTemp/2;
  float offset = sizePatels/2;
  ellipse(xCenter-offset,yCenter-offset,sizePatels,sizePatels);
  ellipse(xCenter+offset,yCenter-offset,sizePatels,sizePatels);
  ellipse(xCenter+offset,yCenter+offset,sizePatels,sizePatels);
  ellipse(xCenter-offset,yCenter+offset,sizePatels,sizePatels);
  
  fill(colorCenter);
  ellipse(xCenter,yCenter,sizePatels,sizePatels);
  
}

// whenever the mouse is pressed, the code will generate a new random color for the center of the flower
void mousePressed(){

  colorCenter = color(random(255),random(255),random(255));

}
