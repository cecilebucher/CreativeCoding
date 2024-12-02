



void drawKristina0(PGraphics pg) {

  fill(#293986);
  rect(0, 0, boxWidth, boxHeight);

  fill(300);
  stroke(#19FA22);
  strokeWeight(4);
  
  rectMode(CENTER);

  int s = 205;
  rect(150, 150, s, s);
  s += 15;
  rect(150, 150, s, s);
  s += 15;
  rect(150, 150, s, s);
  s += 15;
  rect(150, 150, s, s);
  s += 15;
  rect(150, 150, s, s);
  s += 15;
  rect(150, 150, s, s);
  s += 15;
  rect(150, 150, s, s);

 
  
  int diam = 270;
  int pinkEllipse = 300;

  while (diam > 0) {
    if (diam < 100) {
      stroke(#CCFCBF);
    } else {
      stroke(#98A1F7);
    }
  
    fill(252, 25, 196);
    ellipse(boxWidth/2, boxHeight/2, diam, diam);
  
    pinkEllipse = pinkEllipse - 10;
    diam = diam - 15;
  }
  
}
