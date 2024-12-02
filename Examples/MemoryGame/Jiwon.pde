

void drawJiwon0(PGraphics pg) {
  fill(0);
  rect(0, 0, boxWidth, boxHeight);
  int s = 200;
  int c = 255;
  strokeWeight(1);
  while (s>0) {
    pushMatrix();
    rectMode(CENTER);
    translate(boxWidth/2, boxHeight/2);
    rotate(radians(s));
    fill(c, 200, 250);
    stroke(20, 25, c);
    //noStroke();
    rect(0, 0, s, s);
    s-=10;
    c-=20;
    popMatrix();
  }
}
