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
  float centerX = appWidth * 1/2; //Point
  float centerY = appHeight * 1/2; //Point
  quitButtonX = centerX - (appWidth * 1/4);
  quitButtonY = centerY - ( appHeight * 1/4);
  quitButtonWidth = appWidth * 1/2;
  quitButtonHeight = appHeight * 1/2;
} //End setup
//
void draw() 
{
  if (noNowReallyStart==true) { //Actual start IF
    background(0); //Night Mode not considered yet
    //
    //Logical Rectangle
    println("X-Value0", quitButtonX, mouseX, quitButtonX+quitButtonWidth);
    println("X-Value0", quitButtonY, mouseY, quitButtonY+quitButtonHeight);
    //
    //Quit Button Hover Over Feature
    if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
      quitButtonColour = yellow; //Remember Knight Mode
    } else {
      quitButtonColour = purple; //Remember Day Mode
    } //End Hover Over
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
