


void drawNoah0(PGraphics pg){
  pg.fill(255);
  pg.rect(0, 0, boxWidth, boxHeight);
  pg.rectMode(CENTER);
  int SquareSize = 29;
  int xStart = SquareSize/2;
  int x = xStart;
  float y = SquareSize/2;
  pg.stroke(171, 5, 255);
  pg.fill(255);



  for (int r=0; r<8; r++) {
    float i = random(50, 65);
    float b = random(1, 2) ;

    x = xStart;
    //SquareSize += SquareSize + 0.1;
    for (int c=0; c<8; c++) {
      pg.ellipse(x, y, i, i);
      x += 10 + SquareSize;
    }
    y +=10+SquareSize;

    //if (SquareSize > 300){
    //SquareSize = 29; }
    if (y > 150 ) {
      if ( b > 1) {
        pg.stroke(171, 5, 255);
      } else {
        pg.stroke(255);
      }
    }
  }
  
}
