//Global Variables
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
//
void setup() {
  //
  size(500, 600); //fullScreen, displayWidth, displayHeight
  //
  //Population
  drawingSurfaceX = width*0/4;
  drawingSurfaceY = height*0/5;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
//
void draw() {
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth &&mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Paper-Button
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth &&mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)
}//End mousepressed
//
//End MAIN
