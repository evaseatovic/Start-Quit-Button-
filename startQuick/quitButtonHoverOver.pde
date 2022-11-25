void quitButtonHoverOver() {
   if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
      quitButtonColour = yellow; //Remember Knight Mode
    } else {
      quitButtonColour = purple; //Remember Day Mode
    } //End Hover Over
}//End quitButtonHoverOver
