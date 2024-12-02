


void drawCarina0(PGraphics pg) {
  //pg.background (255);
  int s = 350;
  pg.fill(255);
  pg.stroke(#2fff00);
  while (s > 100) {
    pg.ellipse(boxWidth/2, boxHeight/2, s, s);
    s = s - 10;
  }

  pg.rectMode (CENTER) ;
  int a = 200;
  pg.stroke(255);
  pg.fill(#2fff00);
  while (a > 1) {
    pg.rect(boxWidth/2, boxHeight/2, a, a) ;
    a = a - 10;
  }
}
