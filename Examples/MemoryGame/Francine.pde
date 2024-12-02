

void drawFrancine0(PGraphics pg) {

  pg.fill(0);
  pg.noStroke();
  pg.rect(0, 0, boxWidth, boxHeight);
  int s= 170;
  int oneEllipse=255;
  pg.strokeWeight (1);

  while ( s > 0 ) {


    pg.fill(oneEllipse, 0, 100);
    pg.ellipse(boxWidth/8, boxHeight/2, s, s);

    oneEllipse= oneEllipse- 30;
    s= s - 15;

    int a=202;
    int twoEllipse= 200;

    pg.strokeWeight(1);

    while (a>0) {

      pg.stroke(twoEllipse, 50, 100);
      pg.noFill();
      pg.ellipse(boxWidth/2, boxHeight/5, a, a);

      twoEllipse= twoEllipse-3;
      a= a-40;
    }
  }
}
