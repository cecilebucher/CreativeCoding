


void drawMax0(PGraphics pg) {

  pg.fill(255);
  pg.rect(0, 0, boxWidth, boxHeight);
  pg.noFill();
  pg.stroke(0);

  pg.rectMode(CENTER);

  int s=0;
  while (s<300) {
    pg.rect(boxWidth/2, boxHeight/2, s, s);
    s=s+5;
  }

  int y=100;
  int x=0;

  while (x<150) {
    pg.blendMode(MULTIPLY);

    pg.stroke(255, 0, 0);
    pg.noFill();
    pg.ellipse(boxWidth/2, boxHeight/2+110, x+500, x-500);
    pg.ellipse(boxWidth/2, boxHeight/2+250, x-450, x+450);
    pg.ellipse(boxWidth/2, boxHeight/2+140, x+50, x+50);

    pg.fill(0);
    pg.ellipse(boxWidth/2, boxHeight/2+140, 30, 30);
    x=x+5;
  }
}
