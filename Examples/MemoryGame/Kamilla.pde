

void drawKamilla0(PGraphics pg) {
  pg.pushMatrix();
  pg.scale(0.6,0.6);
  pg.background(0);

  pg.stroke(180);
  pg.noFill();
  for (int i = 0; i < 200; i += 20) {
    pg.bezier(0, 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0));
  }

  pg.noStroke();
  int s=150;
  int c=0;
  while (s>0) {
    pg.fill (c, 0, 0);
    pg.ellipse (500/2, 300, s, s);

    c=c+10;
    s=s-10;
  }

  circle2 (450, 550, 550, pg);

  for (float y = random(100); y<500; y+=100) {
    for (float x = random (100); x<500; x+=100) {
      if (random(70)<30) {
        star (x, y, 15, 35, 6, pg);
      }
    }
  }
  pg.popMatrix();
}



void circle2(int x, int y, int s, PGraphics pg) {

  pg.stroke(150);
  while (s>0) {
    pg.noFill ();
    pg.ellipse (x, y, s, s);
    s=s-50;
  }
}

void star(float x, float y, float radius1, float radius2, int npoints, PGraphics pg) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  pg.beginShape();
  pg.noStroke();
  //fill (random(255),random(255),random(255));
  pg.fill (255);
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    pg.vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    pg.vertex(sx, sy);
  }
  pg.endShape(CLOSE);
}
