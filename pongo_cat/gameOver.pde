void gameOver() {
  fill(255,100,100);
  rect(0,0,width,height);
  
  // winner declaration
  if (scoreP1 == 3) {
    fill(255);
    textSize(75);
    textAlign(CENTER,CENTER);
    text("P1 wins best of 5! (" + scoreP1 + "-" + scoreP2 + ")",500,225);
  }
  if (scoreP2 == 3) {
    fill(255);
    textSize(70);
    textAlign(CENTER,CENTER);
    text("P2 wins best of 5! (" + scoreP1 + "-" + scoreP2 + ")",500,225);
  }
  
  // return to intro
  textSize(50);
  text("Click anywhere to return to intro",500,450);
}

void gameOverClicksP() {
  mode = intro;
}
