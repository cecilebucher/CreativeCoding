import processing.sound.*;

// image variables
PImage img0;
PImage img1;
PImage img2;

// Image ID to switch between the three different images
int imageID = 0;

// color palette
color[] colors = {#FFA0A0, #8E0000, #A991D6, #6FDBD8, #FFF595, #D3EDC2, #B623B7};

// current color - per default, we take the first one in our color palette
color currentColor = colors[0];

// sound file
SoundFile file;


// frame count
int nbFrameCount;

// previous dice number
int previousDice = -1;


void setup() {

  //size(600,600);
  fullScreen();

  // load all three images
  img0 = loadImage("Flower0.png");
  img1 = loadImage("Flower1.png");
  img2 = loadImage("Flower2.png");

  // load sound file
  file = new SoundFile(this, "1.aif");

  // make a white background
  background(255);
}


void draw() {

  // change the color of the images
  // when working with images, we use the function tint() instead of fill()
  tint(currentColor);

  // small trick to draw new flowers only every 10 frames.
  if (nbFrameCount > 10) {
    if (imageID == 0) {
      image(img0, mouseX-img0.width/2, mouseY-img0.height/2);
    } else if (imageID == 1) {
      image(img1, mouseX-img1.width/2, mouseY-img1.height/2);
    } else {
      image(img2, mouseX-img2.width/2, mouseY-img2.height/2);
    }
    nbFrameCount = 0;
  }

  // we add one to our variable frame count - 1,2,3,...
  nbFrameCount++;
}

void mousePressed() {

  // throw the dice
  int dice = (int) random(colors.length);

  // if the current dice has the same value than the previous one
  if (dice == previousDice) {
    // take the next one.
    dice++;
    // check the borders!
    if (dice >= colors.length) {
      dice = 0;
    }
  }

  // assign the new color to our current color
  currentColor = colors[dice];
  
  // re-init the previousDice value
  previousDice = dice;

  // choose a random ID for the next image drawn
  imageID = (int) random(3);

  // play the sound
  file.play();
  
}
