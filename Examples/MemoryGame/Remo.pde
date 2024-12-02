


void drawRemo0(PGraphics pg) {

  pg.fill(0);
  pg.rect(0, 0, boxWidth, boxHeight);

  int s = 450;// local variable groß oder klein 10 od. 300
  int wEllipse = 255;
  while (s > 0) { // größer > & kleiner <
    if (s< 200) {
      pg.stroke(255, 255, 255, 20);
    } else {
      pg.noStroke();
    }
    pg.fill(0, 150, 200, 40);
    pg.ellipse(boxWidth/2, boxHeight, s, s); //rect oder ellipse
    s = s - 20; // kann + oder - sein

    wEllipse = wEllipse - 30;
    s = s -20;
  }

  int b = 450;// local variable groß oder klein 10 od. 300
  int bEllipse = 255;
  while (b > 0) { // größer > & kleiner <
    if (b< 200) {
      pg.stroke(255, 255, 255, 20);
    } else {
      pg.noStroke();
    }
    pg.fill(0, 255, 0, 40);
    pg.ellipse(boxWidth/2, boxHeight/2, b, b); //rect oder ellipse
    b = b - 20; // kann + oder - sein

    bEllipse = bEllipse - 30;
    b = b -20;
  }
  int c = 450;// local variable groß oder klein 10 od. 300
  int cEllipse = 255;
  while (c > 0) { // größer > & kleiner <
    if (c< 200) {
      pg.stroke(255, 255, 255, 20);
    } else {
      pg.noStroke();
    }
    pg.fill(255, 255, 255, 40);
    pg.ellipse(boxWidth/2, boxHeight/8, c, c); //rect oder ellipse
    c = c - 20; // kann + oder - sein

    cEllipse = cEllipse - 30;
    c = c -20;
  }
}
