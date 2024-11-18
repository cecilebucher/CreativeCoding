



void setup(){


  size(400,400);
  

}


void draw(){

   background(0);
   
   // draw big circle
   fill(0,255,255);
   stroke(255,0,255);
   strokeWeight(10);
   ellipse(100,100,150,150);
   
   // draw square
   fill(255);
   stroke(255,0,0);
   strokeWeight(8);
   rect(300,100,70,70);
   
   
   // draw small circle
   fill(255,255,0);
   stroke(255);
   strokeWeight(5);
   ellipse(200,300,50,50);


}
