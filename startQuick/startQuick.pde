//Global Variables
Boolean start=false, noNowReallyStart=false;
//
void setup() {} //End setup
//
void draw() 
{
 if (noNowReallyStart==true) background(0); //Night Mode not considered yet
} //End draw
//
void keyPressed()
{
  //
  if ( key==' ' && start==true) noNowReallyStart = true;
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
