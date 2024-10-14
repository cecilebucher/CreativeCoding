
/*
 *  Kunstuni TIME team
 *  Cécile
 *
 *  Face example
 *
 *  A face which will respond differently based on the mouse position
 *
 */

// eyes
int leftEyeX = 140;
int leftEyeY = 100;
int rightEyeX = 260;
int rightEyeY = 100;
int eyeSize = 100;
int eyeRadius = eyeSize/2;

// nose
int noseX = 200;
int noseY = 200;
int noseSize = 50;
int noseRadius = noseSize/2;

// mouth
int mouthX = 75;
int mouthY = 250;
int mouthWidth = 250;
int mouthHeight = 30;

void setup() {
  size(400, 400);
}

void draw() {

  background(0);
  noStroke();

  // checking if the mouse is over the left eye
  if (dist(mouseX, mouseY, leftEyeX, leftEyeY) <= eyeRadius) {

    // draw left eye
    fill(255);    // fill with white
    ellipse(leftEyeX, leftEyeY, eyeSize, eyeSize-70);
    fill(0);      // fill with black
    ellipse(leftEyeX+20, leftEyeY, 40, 40);

    // right eye
    fill(255);    // fill with white
    ellipse(rightEyeX, rightEyeY, eyeSize, eyeSize-70);
    fill(0);      // fill with black
    ellipse(rightEyeX+20, rightEyeY, 40, 40);
  } else {

    // left eye
    fill(255);  // fill with white
    ellipse(leftEyeX, leftEyeY, eyeSize, eyeSize);
    fill(0);    // fill with black
    ellipse(leftEyeX, leftEyeY, 40, 40);

    // right eye
    fill(255);  // fill with white
    ellipse(rightEyeX, rightEyeY, eyeSize, eyeSize);
    fill(0);    // fill with black
    ellipse(rightEyeX, rightEyeY, 40, 40);
  }


  // checking if the mouse is over the right eye
  if (dist(mouseX, mouseY, rightEyeX, rightEyeY) <= eyeRadius) {
    // if the mouse is over the right eye, draw two black circles which will cover the rest of the eye
    fill(0);
    ellipse(leftEyeX, leftEyeY-15, eyeSize+15, eyeSize+15);
    ellipse(rightEyeX, rightEyeY-15, eyeSize+15, eyeSize+15);
  }


  // checking if the mouse is over the nose
  if (dist(mouseX, mouseY, noseX, noseY) <= noseRadius) {
    fill(255, 0, 0);  // fill with red
  } else {
    fill(0);          // fill with black
  }
  // draw the nose
  stroke(255);
  strokeWeight(5);
  ellipse(noseX, noseY, noseSize, noseSize);


  // checking if the mouse is over the mouth
  if (mouseX >= mouthX && mouseX <= (mouthX + mouthWidth) && mouseY >= mouthY && mouseY <= (mouthY + mouthHeight)) {
    mouthHeight = 80;  // make the height of the mouth bigger
  } else {
    mouthHeight = 30;  // make the height of the mouth smaller
  }

  // draw the mouth
  fill(0);
  stroke(255);
  strokeWeight(5);
  rect(mouthX, mouthY, mouthWidth, mouthHeight);
  
  
  
}
