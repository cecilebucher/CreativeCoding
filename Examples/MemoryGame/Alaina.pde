


void drawAlaina0(PGraphics pg) {
  
  pg.fill(#293986);
  pg.rect(0, 0, boxWidth, boxHeight);
  pg.fill(#F00FAC);
  pg.noStroke();

  pg.rectMode(CENTER);
  int s = 200;
  int pinkEllipse =240;

  while (s > 0 ) {
    //fill(pinkEllipse,0,0);
    pg.fill(pinkEllipse, 19, 85);
    pg.ellipse(boxWidth/2, boxHeight/2, s, s);
    pinkEllipse = pinkEllipse - 30;
    s=s-30;
  }
}
