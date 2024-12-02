/*
 *  Kunstuni TIME team
 *  Cécile
 *
 *  LoadSound example
 *
 *  Loads a sound and play it when you press the mouse
 *
 */

// add this line at the top of your code when you want to use sounds
// And don't forget to add the library to procesing by using the library manager (under the menu Sketch)
import processing.sound.*;

// define a variable of type SoundFile
SoundFile file;


void setup(){
  
  size(400,400);
  
  // loads the sound file.
  // The sound file must be in the data folder of the current sketch 
  // to load successfully
  file = new SoundFile(this,"sound.aif");
  
}


void draw(){
  background(0);
}


void mousePressed(){
  
  // plays the sound
  file.play();
  
}
