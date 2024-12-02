


int sStart = 550;


void drawSofiia0(PGraphics pg) {
  pg.pushMatrix();
  pg.scale(0.5);
  pg.fill(0);
  pg.rect(0, 0, boxWidth*2, boxHeight*2);
  pg.fill(220);
  pg.stroke(255, 0, 0);

  pg.rectMode(CENTER);

  int f = 920;
  int blurEllipse = 255;

  while (f>0) {
    pg.fill(blurEllipse, 0, 0);
    pg.noStroke();
    pg.ellipse(boxWidth, boxHeight, f, f);
    blurEllipse = blurEllipse - 20;
    f=f-30;
  }

  pg.noStroke();
  int s = 550;
  int c = 255;
  int t = 0;
  int p = 550;
  while (s > 0) {
    pg.fill(c, 30, 255, t);
    pg.ellipse(boxWidth, boxHeight, s, s);
    
    
    pg.pushMatrix();
    pg.translate(boxWidth, boxHeight);
    pg.rotate(PI);
    
    pg.textSize(p);
   
    pg.fill(250,0,0,60);
    pg.text('Q', 0, 0);
    pg.popMatrix();
    pg.text('Q', boxWidth, boxHeight);
    
    pg.pushMatrix();
    pg.translate(boxWidth, boxHeight);
    pg.rotate(PI);
    
    pg.textSize(p);
   
    pg.fill(#040327,0,0,40);
    pg.text('Y', 0, 0);
    pg.popMatrix();
    pg.text('Y', boxWidth, boxHeight);
    
    
    c = c - 10;
    s = s - 10;
    t = t +1;
    p = p - 10;
  }
  pg.popMatrix();
}


void drawSofiia1(PGraphics pg) {

  //pg.fill(0);
  //pg.rect(0, 0, boxWidth, boxHeight);
  pg.rectMode(CENTER);

  int f = 520;
  int blurEllipse = 5;


  while (f>0) {
    pg.fill(blurEllipse, 0, 0);
    pg.noStroke();
    pg.ellipse(boxWidth, boxHeight, f, f);
    blurEllipse = blurEllipse - 10;
    f=f-70;
  }


  pg.noStroke();
  int s = sStart;
  int c = 20;
  int t = 0;
  int p = 10;
  while (s > 0) {
    pg.fill(c, 30, 255, t);
    pg.ellipse(boxWidth, boxHeight, s, s);

    if (sStart < 5) {
      sStart = 550;
    }


    c = c - 100;
    s = s - 10;
    t = t +1;
    p = p - 100;
  }

  sStart--;
}
