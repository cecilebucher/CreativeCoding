

void drawVincent0(PGraphics pg) {
  pg.background(255);
  pg.translate(boxWidth / 2, boxHeight / 2);
  int numLines = 100;

  for (int i = 0; i < numLines; i++) {
    float angle = radians(i * 360 / numLines);
    float length = 135;

    pg.stroke(random(255), random(255), random(255));
    pg.line(0, 0, cos(angle) * length, sin(angle) * length);
  }
}
