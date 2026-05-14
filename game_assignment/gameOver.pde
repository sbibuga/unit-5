void gameOver() {
  background(255,100,100);
  textAlign(CENTER,CENTER);
  textSize(100);
  fill(255);
  text("Game Over",400,325);
  textSize(80);
  text("Score: " + score,400,475);
  text("High score: " + highScore,400,555);
  fill(255);
  stroke(0);
  strokeWeight(4);
  rect(650,650,100,100);
  fill(0);
  textSize(100);
  text("←",700,690);
}

  

void gameOverClicksP() {
  if (mouseX >= 650 && mouseX <= 750) {
    if (mouseY >= 650 && mouseY <= 750) {
      mode = intro;
      x = 400;
      y = 400;
      d = 80;
      velocity = 0.6;
      velocityChange = 0.6;
      score = 0;
      pausesLeft = 2;
    }
  }
}

void gameOverClicksR() {
}
