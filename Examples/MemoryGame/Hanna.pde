
void drawHanna0(PGraphics pg) {

  pg.fill(#4B3873);
  pg.rect(0, 0, boxWidth, boxHeight);

  int xStart = 17; // Starting x position for each row
  int x = xStart;
  int y = 0; // Starting y position

  int sGrid = 34; // Grid x
  int yGrid = 30; // Grid y
  int s = 5; // Size  hexagons

  for (int i = 0; i < 14; i++) {
    
    if (i % 2 == 0) {
      x = xStart;
    } else {
      x = xStart - 17;
    }

    for (int j = 0; j < 14; j++) { 
      pg.noStroke();
      
      // Draw large black hexagon
      pg.fill(#4B3873);
      pg.pushMatrix();
      pg.translate(x, y);
      pg.rotate(PI / 2);
      polygon(pg,0, 0, s * 4, 6);
      pg.popMatrix();

      // Draw orange hexagon 
      pg.fill(#A78FBF,100);
      pg.pushMatrix();
      pg.translate(x, y);
      pg.rotate(PI / 2);
      polygon(pg,0, 0, s * 3, 6);
      pg.popMatrix();

      // Draw small black hexagon 
      pg.fill(#4B3873);
      pg.pushMatrix();
      pg.translate(x, y);
      pg.rotate(PI / 2);
      polygon(pg,0, 0, s * 2, 6);
      pg.popMatrix();

      // Draw small red hexagon
      pg.fill(#D93D4A);
      pg.pushMatrix();
      pg.translate(x, y);
      pg.rotate(PI / 2);
      polygon(pg,0, 0, s, 6);
      pg.popMatrix();

     
      if (i % 2 == 0) {
        pg.fill(#4B3873);
        pg.rectMode(CENTER);
        pg.rect(x, y + 10, 5, 10);
      } else {
        pg.fill(#4B3873);
        pg.rectMode(CENTER);
        pg.rect(x, y - 10, 5, 10);
      }

      // Update the x position 
      x += sGrid;
    }

    // Update the y position 
    y += yGrid;
  }
}


void polygon(PGraphics pg, float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  pg.beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    pg.vertex(sx, sy);
  }
  pg.endShape(CLOSE);
}
