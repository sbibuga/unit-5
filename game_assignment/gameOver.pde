void gameOver() {
  background(255,100,100);
  textAlign(CENTER,CENTER);
  textSize(100);
  fill(255);
  text("Game Over",400,325);
  text("score: " + score,400,475);
  textSize(20);
  text("click the white square to restart",400,650);
  fill(255);
  stroke(0);
  strokeWeight(4);
  rect(650,650,100,100);
}

void gameOverClicksP() {
  if (mouseX >= 650 && mouseX <= 750) {
    if (mouseY >= 650 && mouseY <= 750) {
      mode = intro;
      x = 400;
      y = 400;
      d = 80;
      velocity = 0.01;
      velocityChange = 0.02;
      score = 0;
    }
  }
}

void gameOverClicksR() {
}
