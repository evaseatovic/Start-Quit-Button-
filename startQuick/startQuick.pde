//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup()
{
  size (400, 300);
  appWidth = width;
  appHeight = height;
  //
  //Population
  quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
  
} //End setup
//
void draw() 
{
 if (noNowReallyStart==true) { //Actual start IF
   background(0); //Night Mode not considered yet
   rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight); //Quit Button
 } //End IF-Start
} //End draw
//
void keyPressed()
{
  //
  if ( key==' ' && start==true) noNowReallyStart = true;
  //
  //prototype Key Board Quit Button OR shortcut
  if ( key=='Q' || key=='q' ) exit();
  if ( keyCode == BACKSPACE ) exit();
  //
} //End keyPressed
//
void mousePressed() 
{
  //
  //OS Level Start Button
  start = true;
  println("To Start, Press The Space Bar");
  //
} //End mousePressed
//
//End Main Program
