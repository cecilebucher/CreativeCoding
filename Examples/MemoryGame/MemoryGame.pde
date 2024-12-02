
import ddf.minim.*;

// number of patterns used in this memory game
int nbPatterns = 12;
int nbCols = 6;       // number of columns
int nbRows = 4;       // number of rows

// for each card, we have a PGraphic image on which we will draw the pattern
PGraphics[][] images;     // double array of PGraphics images
float boxWidth = 300;     // width of each card
float boxHeight = 300;    // height of each card
float space = 10;

// margin variables -
float marginLeft;
float marginRight;
float marginTop;
float marginBottom;

// sound
Minim minim;
AudioPlayer player;

// scalefactor - you can change its value in the setup() function
float scaleFactor;

// predefined memory card positions.
int[][] boxes = {
  {11, 4, 9, 8, 7, 3},
  {2, 3, 7, 4, 0, 1},
  {1, 5, 6, 2, 10, 6},
  {9, 11, 0, 10, 8, 5}
};

// double array of integers which will store for each card its state
// state 0: not shown
// state 1: shown
// state 2: shown and found
int[][] boxesState;

// this is the variable which will hold the previous selected pattern id
int selectedPatternID = -1;



void setup() {

  // make the game fullscreen.
  // use P2D for better graphic performances.
  fullScreen(P2D, 1);
  
  // calculate the margins, given the number of rows and columns, the box sizes and the space in between the cards 
  marginLeft = (width - (nbCols*boxWidth + (nbCols-1)*space))/2.0;
  marginRight = marginLeft;
  marginTop = (height - (nbRows*boxHeight + (nbRows-1)*space))/2.0;
  marginBottom = marginTop;

  // initialise our boxState double arrays to 0 (cards not shown)
  boxesState = new int[nbRows][nbCols];
  for (int i=0; i<nbRows; i++) {
    for (int j=0; j<nbCols; j++) {
      boxesState[i][j] = 0;
    }
  }

  // create a new PGraphic for every card and reserve memory space (boxWidth x boxHeight)
  images = new PGraphics[nbRows][nbCols];
  for (int i=0; i<nbRows; i++) {
    for (int j=0; j<nbCols; j++) {
      images[i][j] = createGraphics((int)boxWidth, (int)boxHeight);
    }
  }

  // use sound and load schlack.mp3 sound file (this file is in the data folder)
  minim = new Minim(this);
  player = minim.loadFile("schlack_CarlottaBorcherding.mp3", 2048);

  // change it as you wish
  scaleFactor = 0.7;
  
}



// this method gets called when pressing the key 'r'
void resetGame() {
  for (int i=0; i<nbRows; i++) {
    for (int j=0; j<nbCols; j++) {
      boxesState[i][j] = 0;
    }
  }
}


void draw() {
  
  // draw black background
  background(0);
  
  // use push matrix and scale down/up the whole scene by the scaleFactor value
  pushMatrix();
  translate(width/2, height/2);
  scale(scaleFactor);
  translate(-width/2, -height/2);
  
  // draw all cards
  for (int i=0; i<nbRows; i++) {
    for (int j=0; j<nbCols; j++) {
      // retrieve the current x,y position for each box
      float xCurr = j*(boxWidth+space) + marginLeft;
      float yCurr = i*(boxHeight+space) + marginTop;
      fill(255);
      noStroke();
      rectMode(CORNER);
      rect(xCurr, yCurr, boxWidth, boxHeight);
      if (boxesState[i][j] == 1 || boxesState[i][j] == 2) {
        pushMatrix();
        translate(xCurr, yCurr);
        images[i][j].beginDraw();
        drawPattern(boxes[i][j], images[i][j]);
        images[i][j].endDraw();
        image(images[i][j], 0, 0);
        popMatrix();
      }
    }
  }
  
  // pop matrix
  popMatrix();
  
}


void drawPattern(int patternID, PGraphics pg) {

  if (patternID == 0) drawAlaina0(pg);
  else if (patternID == 1) drawFrancine0(pg);
  else if (patternID == 2) drawHanna0(pg);
  else if (patternID == 3) drawJiwon0(pg);
  else if (patternID == 4) drawKristina0(pg);
  else if (patternID == 5) drawMax0(pg);
  else if (patternID == 6) drawNoah0(pg);
  else if (patternID == 7) drawRemo0(pg);
  else if (patternID == 8) drawSofiia0(pg);
  else if (patternID == 9) drawKamilla0(pg);
  else if (patternID == 10) drawCarina0(pg);
  else if (patternID == 11) drawVincent0(pg);
  
}


void mousePressed() {

  println(mouseX, mouseY);
  float boxWidthScaled = boxWidth*scaleFactor;
  float boxHeightScaled = boxHeight*scaleFactor;
  float spaceScaled = space*scaleFactor;
  float marginLeftScaled = (width - (nbCols*boxWidthScaled + (nbCols-1)*spaceScaled))/2.0;
  float marginTopScaled = (height - (nbRows*boxHeightScaled + (nbRows-1)*spaceScaled))/2.0;

  if (selectedPatternID == -1) {
    for (int m=0; m<nbRows; m++) {
      for (int n=0; n<nbCols; n++) {
        if (boxesState[m][n] == 1) {
          boxesState[m][n] = 0;
        }
      }
    }
  }

  for (int i=0; i<nbRows; i++) {
    for (int j=0; j<nbCols; j++) {
      
      // retrieve the current x,y position for each box
      float xCurr = j*(boxWidthScaled+spaceScaled) + marginLeftScaled;
      float yCurr = i*(boxHeightScaled+spaceScaled) + marginTopScaled;
      
      // if the mouse is in This box
      if (mouseX >= xCurr && mouseX <= (xCurr + boxWidthScaled) && mouseY >= yCurr && mouseY <= (yCurr + boxHeightScaled)) {
        
        // if the selected card is hidden (state 0)
        if (boxesState[i][j] == 0) {

          // make the box state become 1 (card will be shown)
          boxesState[i][j] = 1;

          // if no card has been selected 
          if (selectedPatternID == -1) {
            selectedPatternID = boxes[i][j]; // just assign it to the pattern id of our card
          } else { // otherwise, check if the current pattern id matches the previous pattern id
            if (selectedPatternID == boxes[i][j]) { 
              boxesState[i][j] = 2;    // if it maches => change the state to 2 (card is shown and found)
              // find the other pair
              for (int m=0; m<nbRows; m++) {
                for (int n=0; n<nbCols; n++) {
                  if (boxesState[m][n] == 1) {
                    boxesState[m][n] = 2;      // change the state to 2 for the other card.
                  }
                }
              }
              selectedPatternID = -1;
            } else {
              selectedPatternID = -1;
            }
          }
          
          // play the click sound
          player.rewind();
          player.play();
        }
        
      } // end of if(mouseX .... )
    
    }
  } // end of double loop
  
}


// this method gets called when you hit a key on the keyboard
void keyPressed() {
  println(key);
  
  // if the key is 'r' => call the method resetGame() declared right after the setup() method
  if (key == 'r') {
    resetGame();
  } 
  
}
