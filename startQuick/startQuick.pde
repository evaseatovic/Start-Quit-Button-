//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, yellow=#FFFF00 , purple=#D630FC ;
//
void setup()
{
  //Display & Algorithums not considerd yet
  size (400, 300); //Landscape

  appWidth = width;
  appHeight = height;
  //
  //Population
 population();
} //End setup
//
void draw() 
{
  if (noNowReallyStart==true) { //Actual start IF
    
    //
    //Logical Rectangle
    debugLogicalRect();
    //
   quitButtonHoverOver();
    //
    quitButtonDraw();
  } //End IF-Start
} //End draw
//
void keyPressed()
{
  //
  if ( key==' ' && start==true) noNowReallyStart = true;
  //
  //prototype Key Board Quit Button OR shortcut
  keyBoardShortCuts();
  //
} //End keyPressed
//
void mousePressed() 
{
  //
  OS_Start();
  //Quit Button: Logical Rectangle, see println in draw()
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
} //End mousePressed
//
//End Main Program
